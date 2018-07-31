/****************************************************************************
 *  Copyright (C) 2018 RoboMaster.
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of 
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program. If not, see <http://www.gnu.org/licenses/>.
 ***************************************************************************/

#include <unistd.h>
#include "modules/perception/detection/caisson_detection/caisson_detection_node.h"

namespace rrts{
namespace perception {
namespace detection {

CaissonDetectionNode::CaissonDetectionNode(std::string name):
    node_state_(rrts::common::IDLE),
    initialized_(false),
    camera_id_(0),
    rrts::common::RRTS::RRTS(name),
    as_(nh_, name+"_action", boost::bind(&CaissonDetectionNode::ActionCB, this, _1), false) {
  initialized_ = false;
  if (Init().IsOK()) {
    initialized_ = true;
    node_state_ = rrts::common::IDLE;
  } else {
    LOG_ERROR << "caisson_detection_node initalized failed!";
    node_state_ = rrts::common::FAILURE;
  }
  
  as_.start();

}

ErrorInfo CaissonDetectionNode::Init() {
  CaissonDetectionParams caisson_detection_params;
  std::string file_name = "/modules/perception/detection/caisson_detection/config/caisson_detection.prototxt";
  bool read_state = rrts::common::ReadProtoFromTextFile(file_name, &caisson_detection_params);
  if (!read_state) {
    LOG_ERROR << "Cannot open " << file_name;
    return ErrorInfo(rrts::common::ErrorCode::DETECTION_INIT_ERROR);
  }
  m_canny = caisson_detection_params.pcanny();
  m_SML= caisson_detection_params.sml();
  m_nGaussianBlurValue   = caisson_detection_params.ngaussianblurvalue();
  m_disThr   = caisson_detection_params.disthr();
  m_fps = caisson_detection_params.fps();
  m_minArea = caisson_detection_params.minarea();
  m_maxArea = caisson_detection_params.maxarea();
  m_fpsCount = 0;
  detected_caisson_ = false;
  m_caissonDistance = 0;
  return ErrorInfo(rrts::common::ErrorCode::OK);
}

void CaissonDetectionNode::ActionCB(const messages::caissonDetectionGoal::ConstPtr &data) {
  messages::caissonDetectionFeedback feedback;
  messages::caissonDetectionResult result;
  bool undetected_msg_published = false;

  

  if(!initialized_){
    feedback.error_code = error_info_.error_code();
    feedback.error_msg  = error_info_.error_msg();
    as_.publishFeedback(feedback);
    as_.setAborted(result, feedback.error_msg);
    LOG_INFO<<"Initialization Failed, Failed to execute action!";
    return;
  }
  
  switch (data->command) {
    case 1:
      StartThread();
      break;
    case 2:
      PauseThread();
      break;
    case 3:
      StopThread();
      break;
    default:
      break;
  }
  
  ros::Rate loop(25);
  while(ros::ok()) {
    loop.sleep();
    if(as_.isPreemptRequested()) {
      as_.setPreempted();
      return;
    }

    std::lock_guard<std::mutex> guard(mutex_);
    
    feedback.error_code = error_info_.error_code();
    feedback.error_msg = error_info_.error_msg();

    feedback.isCheck = detected_caisson_;
    feedback.dis = m_caissonDistance;
    as_.publishFeedback(feedback);

  }


}

void CaissonDetectionNode::ExecuteLoop() {
  
  bool  findFlag = false;
  while(running_) {
    usleep(1);
    if (node_state_ == NodeState::RUNNING) {
      cv_toolbox_.NextImage(src_, camera_id_);
      if (!src_.empty()) {
        NOTICE("Begin to detect caisson!")

        cv::Point *tagPoint = new cv::Point[m_fps];
        cv::Point curPoint,lastPoint;
        
        
        cv::Mat tmpSrc = src_;
        Pretreat(tmpSrc);
        Identify(src_,tmpSrc,tagPoint);

        if(m_fpsCount == m_fps)
        {
            int sum = 0;
            int avgX = tagPoint[0].x;
            int avgY = tagPoint[0].y;
            for(int i = 1;i < m_fps;i++)
            {
                sum += sqrt(pow((tagPoint[i].x - tagPoint[i - 1].x),2) + pow((tagPoint[i].y - tagPoint[i - 1].y),2));
                avgX += tagPoint[i].x;
                avgY += tagPoint[i].y;
            }

            if(sum / m_fps < m_disThr)
            {
                cv::Point p((int)avgX/m_fps,(int)avgY/m_fps);
               
                curPoint = p;

                findFlag = true;

                detected_caisson_ = true;
                m_caissonDistance = curPoint.x - src_.cols/2;
                
            }

            m_fpsCount = 0;

        }
        
        else if(findFlag && m_fpsCount != m_fps)
          {
            m_caissonDistance = lastPoint.x - src_.cols/2;
            detected_caisson_ = true;
          }

        else
            detected_caisson_ = false;

        lastPoint = curPoint;
        
        delete []tagPoint;
        tagPoint = NULL;
        //cvWaitKey(15);
      } 
     else {
        NOTICE("Waiting for run camera driver...")
        usleep(1000);
          }
    } else if (node_state_ == NodeState::PAUSE) {
      std::unique_lock<std::mutex> lock(mutex_);
      condition_var_.wait(lock);
    }
  }
}



void CaissonDetectionNode::StartThread() {
  LOG_INFO << "Caisson detection node started!";
  running_ = true;
  if(node_state_ == NodeState::IDLE) {
    caisson_detection_thread_ = std::thread(&CaissonDetectionNode::ExecuteLoop, this);
  }
  node_state_ = NodeState::RUNNING;
  condition_var_.notify_one();
}


void CaissonDetectionNode::Pretreat(cv::Mat &src){
 
   //将原图像转换为灰度图像
    cv::Mat imgGray;
    cvtColor(src, src, CV_BGR2GRAY);

   //均值化
    cv::equalizeHist(src,src);	
	
   //3x3内核来降噪
    cv::blur(src, src, cv::Size(3, 3));
		

    cv::GaussianBlur(src, src, cv::Size(m_nGaussianBlurValue * 2 - 1, m_nGaussianBlurValue * 2 - 1), 0, 0);

   //运行Canny算子
    cv::Canny(src, src, m_canny, m_canny * 3, 3);

    cv::threshold(src, src, 0, 255, CV_THRESH_BINARY | CV_THRESH_OTSU);

    
}

void CaissonDetectionNode::Identify(cv::Mat src,cv::Mat &tmp,cv::Point *tagPoint){

    std::vector<std::vector<cv::Point>> contours;
    cv::findContours(tmp,contours,cv::RETR_LIST,cv::CHAIN_APPROX_NONE);
    std::vector<cv::Rect> boundRect;  //定义外接矩形集合

    for(int i=0; i< (int)contours.size(); i++)
       {
          double area = cv::contourArea(contours[i],true);
                
                if(area < 0)
                   area = -area;

                if(area > m_minArea && area < m_maxArea)
                  {
                     cv::Rect temRect = cv::boundingRect(cv::Mat(contours[i]));
                     boundRect.push_back(temRect);
                     //cv::rectangle(src, cv::Point(temRect.x, temRect.y), cv::Point(temRect.x + temRect.width, temRect.y + temRect.height), cv::Scalar(0, 255, 0), 2, 8);
                  }
                
                
       }



   cv::Ptr<cv::ml::ANN_MLP> model = cv::ml::ANN_MLP::load("/home/dji/roborts_ws/src/RoboRTS/modules/perception/detection/caisson_detection/xml/bpcharModel.xml"); //test_model

   bool flag4 = false;
   bool flag2 = false;

   const int image_cols = 8;
   const int image_rows = 16;

   int targetPointX = 0;
   int targetPointY = 0;
   int total = 0;
   for(int i = 0; i < (int)boundRect.size();i++) {

          cv::Rect temRect((int)boundRect[i].x, (int)boundRect[i].y, (int)boundRect[i].width, (int)boundRect[i].height);

          cv::Mat roiImg = src(temRect);
          cv::Mat roiImgGray;
          cv::Mat roiEdg;

          cv::cvtColor(roiImg, roiImgGray, cv::COLOR_BGR2GRAY);
       
          cv::threshold(roiImgGray, roiEdg, 0, 255, CV_THRESH_BINARY | CV_THRESH_OTSU);
           

          std::vector <std::vector<cv::Point>> roiContours;
          cv::findContours(roiEdg, roiContours, cv::RETR_LIST, cv::CHAIN_APPROX_NONE);


          for (int ii = 0; ii < (int) roiContours.size(); ii++) {
                cv::Rect temRect = cv::boundingRect(cv::Mat(roiContours[ii]));
                cv::Mat numImg = roiEdg(temRect);
                cv::Mat test_image = numImg;
         
                cv::Mat test_temp;
                cv::resize(numImg, test_temp, cv::Size(image_cols, image_rows), (0, 0), (0, 0),
                       CV_INTER_AREA);//使用象素关系重采样。当图像缩小时候，该方法可以避免波纹出现
          
                cv::Mat_<float> sampleMat(1, image_rows * image_cols);
                for (int iii = 0; iii < image_rows * image_cols; ++iii) {
                    sampleMat.at<float>(0, iii) = (float) test_temp.at<uchar>(iii / 8, iii % 8);
                }

                cv::Mat responseMat;
                model->predict(sampleMat, responseMat);

                cv::Point maxLoc;
                double maxVal = 0;
                cv::minMaxLoc(responseMat, NULL, &maxVal, NULL, &maxLoc);
                if (maxLoc.x == 4 && maxVal * 100 > m_SML) {
                    // std::cout << "识别结果：" << maxLoc.x << "  相似度:" << maxVal * 100 << "%" << std::endl;
                     flag4 = true;

                }
                if (maxLoc.x == 2 && maxVal * 100 > m_SML) {
               
                    // std::cout << "识别结果：" << maxLoc.x << "  相似度:" << maxVal * 100 << "%" << std::endl;
                     flag2 = true;
                }

            }

            std::vector <std::vector< cv::Point >> ().swap(roiContours);

            if (flag4 || flag2) {
               //  rectangle(src, cv::Point(boundRect[i].x, boundRect[i].y), cv::Point(boundRect[i].x + boundRect[i].width, boundRect[i].y + boundRect[i].height), cv::Scalar(0, 0, 255), 2, 8)
              
                targetPointX += boundRect[i].x + boundRect[i].width / 2;
                targetPointY += boundRect[i].y + boundRect[i].height / 2;
                total++;
               
            }
   
        }

        std::vector<cv::Rect>().swap(boundRect) ;
 
        std::vector<std::vector<cv::Point>> swap(contours);
        
        if(total > 0)
           {
             tagPoint[m_fpsCount].x = targetPointX / total;
             tagPoint[m_fpsCount].y = targetPointY / total;
          
             m_fpsCount++;
           }
        
        
       
}
void CaissonDetectionNode::PauseThread() {
  LOG_INFO << "Caisson detection thread paused!";
  node_state_ = NodeState::PAUSE;
}

void CaissonDetectionNode::StopThread() {
  node_state_ = NodeState::IDLE;
  running_ = false;
  if (caisson_detection_thread_.joinable()) {
    caisson_detection_thread_.join();
  }
}

CaissonDetectionNode::~CaissonDetectionNode() {
  StopThread();
}
} //namespace detection
} //namespace perception
} //namespace rrts

MAIN(rrts::perception::detection::CaissonDetectionNode, "caisson_detection_node")
