#include <ros/ros.h>
#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/ml.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <math.h>
#include <string>
#include"std_msgs/String.h"
#include"std_msgs/Int64.h"
#include"std_msgs/Float64.h"
#include "segment-image.h"
#include "cvCamera/cameraTip.h"

using namespace cv;
using namespace ml;
using namespace std;

#define FPS  0
#define MINARE 200
#define MAXARE 2000


class camera
{
public:
    camera();
    IplImage *doCanny(IplImage * image_input,
                      double lowThresh,
                      double highThresh,
                      double aperture);
    void spin();

private:

    ros::NodeHandle n;
    ros::Publisher camera_pub;
    ros::Time current_time,last_time;
    double rate;

};

camera::camera()
{
    // current_time = ros::Time::now();
    // last_time = ros::Time::now();
     camera_pub = n.advertise<cvCamera::cameraTip>("MoveTip",100);
     rate = 100;
}

IplImage *camera::doCanny(IplImage * image_input,
                      double lowThresh,
                      double highThresh,
                      double aperture)
{
   IplImage * image_output = cvCreateImage(cvGetSize(image_input),
                                           image_input->depth,
                                           image_input->nChannels);

   cvCanny(image_input,image_output,lowThresh,highThresh,aperture);

   return image_output;
}

void camera::spin()
{
    
     const int image_cols = 8;
     const int image_rows = 16;

     CvCapture* capture = cvCreateCameraCapture(1);

     IplImage *frame = 0;
     frame = cvQueryFrame(capture);

    
     int fpsFlag = 0;

     ros::Rate r(rate);

     Ptr<ANN_MLP> model = ANN_MLP::load("/home/dji/catkin_ws_42/src/cvCamera/src/bpcharModel.xml"); //test_model

     while(ros::ok())
     {
       //fpsFlag++;
       
       frame = cvQueryFrame(capture);
       
       Mat srcImg = cvarrToMat(frame); 

      // Mat temImage = imread("/home/dji/catkin_ws_42/src/cvCamera/src/zhongjianrgb.png");
       Mat temImage = srcImg;
       Mat resizeImg = temImage.clone();
       Mat segmentImg = temImage.clone();
       
       if(fpsFlag == FPS)
         {
            fpsFlag = 0;

            

            cvtColor(temImage,temImage,COLOR_BGR2GRAY);
	    blur(temImage,temImage,Size(3, 3));
            GaussianBlur(temImage,temImage,Size(7, 7),0,0,BORDER_DEFAULT);
            
            Canny(temImage,temImage,80,240,3);

            threshold(temImage, temImage, 0, 255, CV_THRESH_BINARY | CV_THRESH_OTSU);
            
            Mat element = getStructuringElement(MORPH_RECT, Size(10, 10));
	    //dilate(temImage,temImage,element);
            morphologyEx(temImage, temImage, cv::MORPH_CLOSE, element);
           // morphologyEx(temImage, temImage, cv::MORPH_OPEN, element);
         
            Mat cloneImg = temImage;
            
            vector<vector<Point>> contours;
            findContours(cloneImg,contours,RETR_LIST,CHAIN_APPROX_NONE);
            vector<Rect> boundRect;  //定义外接矩形集合

            for(int i=0; i< (int)contours.size(); i++)
             {
                double area = contourArea(contours[i],true);
                
                if(area < 0)
                   area = -area;

                if(area > MINARE && area < MAXARE)
                  {
                     Rect temRect = boundingRect(Mat(contours[i]));
                     boundRect.push_back(temRect);
                     //rectangle(resizeImg, Point(temRect.x, temRect.y), Point(temRect.x + temRect.width, temRect.y + temRect.height), Scalar(0, 255, 0), 2, 8);
                  }
                
                
             }
            

            
            bool flag4 = false;
            bool flag2 = false;
            for(int i = 0; i < (int)boundRect.size();i++)
              {
                 Rect temRect(boundRect[i].x, boundRect[i].y,boundRect[i].width,boundRect[i].height);
                 Mat roiImg = segmentImg(temRect);
                 Mat roiImgGray ;
                 Mat roiEdg;
                 cvtColor(roiImg,roiImgGray,COLOR_BGR2GRAY);
                // blur(roiImgGray,roiEdg,Size(3,3));
                 threshold(roiImgGray, roiEdg, 10, 255, CV_THRESH_BINARY);
                
                /* char temp[256];
                 sprintf(temp, "%d", i);
                 string  fileReadName = temp;
                 imshow(fileReadName,roiEdg);*/
                 
                 vector<vector<Point>> roiContours;
                 findContours(roiEdg,roiContours,RETR_LIST,CHAIN_APPROX_NONE);
       
                 
                 for(int ii = 0;ii < (int)roiContours.size();ii++)
                    {
                       Rect temRect = boundingRect(Mat(roiContours[ii]));
                       Mat numImg = roiEdg(temRect); 
                       Mat test_image = numImg;
                      // cvtColor(numImg,numImg,COLOR_BGR2GRAY);
                      // blur(numImg,numImg,Size(3,3));
                      

                       Mat test_temp;
                       resize(numImg, test_temp, Size(image_cols, image_rows), (0, 0), (0, 0), CV_INTER_AREA);//使用象素关系重采样。当图像缩小时候，该方法可以避免波纹出现
                       //threshold(test_temp, test_temp, 0, 255, CV_THRESH_BINARY | CV_THRESH_OTSU);
	               Mat_<float>sampleMat(1, image_rows*image_cols);
	               for (int iii = 0; iii<image_rows*image_cols; ++iii)
	                  {
		            sampleMat.at<float>(0, iii) = (float)test_temp.at<uchar>(iii / 8, iii % 8);
	                  }

	              Mat responseMat;
	              model->predict(sampleMat, responseMat);
                      
	              Point maxLoc;
	              double maxVal = 0;
	              minMaxLoc(responseMat, NULL, &maxVal, NULL, &maxLoc);
                      if(maxLoc.x == 4 && maxVal * 100 > 50)
                        { 
                           cout << "识别结果：" << maxLoc.x << "  相似度:" << maxVal * 100 << "%" << endl;
                          flag4 = true;
               
                        }
                      if(maxLoc.x == 2 && maxVal * 100 > 50)
                         {
                            flag2 = true;
                            cout << "识别结果：" << maxLoc.x << "  相似度:" << maxVal * 100 << "%" << endl;
                          }
	             
                    }

                 vector<vector<Point>>().swap(roiContours); 
                 
                 if(flag4 && flag2)
                    {
                       rectangle(resizeImg, Point(boundRect[i].x, boundRect[i].y), Point(boundRect[i].x + boundRect[i].width, boundRect[i].y + boundRect[i].height), Scalar(0, 0, 255), 2, 8);
                       flag4 = false;
                       flag2 = false;
                    }
                   
              }
            
   
            
           // imshow("cloneImg",cloneImg);
         

            vector<vector<Point>>().swap(contours); 
            vector<Rect>().swap(boundRect);
            
            imshow("srcImg",resizeImg);
            imshow("cloneImg",cloneImg);
            cvWaitKey(15);
        
         }
         
         // imshow("srcImg",srcImg);
           cvWaitKey(15);
         cvCamera::cameraTip move;
  
          move.camera_info = 1;
          camera_pub.publish(move);
          ros::spinOnce();
          r.sleep();
        }
        

          
       cvReleaseCapture(&capture);
    
       cvReleaseImage(&frame);
   
   
}

int main(int argc,char **argv)
{
    ros::init(argc,argv,"camera");
    camera obj;
    obj.spin();
    return 0;
}
