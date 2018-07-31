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
#include "computeSaliency.h"
#include "cvCamera/cameraTip.h"

using namespace cv;
using namespace ml;
using namespace std;

#define FPS  6
#define AREATH 3000


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

     CvCapture* capture = cvCreateCameraCapture(0);

     IplImage *frame = 0;
     frame = cvQueryFrame(capture);

    
     int fpsFlag = 0;

     ros::Rate r(rate);

     Ptr<ANN_MLP> model = ANN_MLP::load("/home/dji/roborts_ws/src/cvCamera/src/bpcharModel.xml"); //test_model

     while(ros::ok())
     {
       fpsFlag++;
       
       frame = cvQueryFrame(capture);
       
       Mat srcImg = cvarrToMat(frame); 

       //Mat temImage = imread("/home/dji/catkin_ws_42/src/cvCamera/src/719.png");
       Mat temImage = srcImg;
       Mat resizeImg = temImage;
       
       if(fpsFlag == FPS)
         {
            fpsFlag = 0;

            unsigned char *pCurImagedata = new unsigned char [resizeImg.rows * resizeImg.cols * resizeImg.channels()];
            int *pSeg = new int[resizeImg.rows*resizeImg.cols];
            unsigned char *pSalimg=new unsigned char[resizeImg.rows * resizeImg.cols];
	    memset(pSalimg,0,resizeImg.rows * resizeImg.cols);


            unsigned char *data = resizeImg.ptr<unsigned char>(0);
       
            for(int i = 0; i < resizeImg.rows; i++)
               {
                data = resizeImg.ptr<unsigned char>(i);
            
                for(int j = 0; j < resizeImg.cols ; j++)
                   {
                        for(int k = 0; k < resizeImg.channels() ; k++)
                         {
                          pCurImagedata[i * resizeImg.cols * resizeImg.channels() + j * resizeImg.channels() + k] = data[j * resizeImg.channels() + k];
                         }
                   }
                }

            int regnum = SegmentImg(pCurImagedata,pSeg,resizeImg.rows,resizeImg.cols,0.5,0.5,200,50);//分割

            compute(pCurImagedata,pSalimg,pSeg,regnum,resizeImg.rows,resizeImg.cols);

    
            Mat cloneImg(resizeImg.rows,resizeImg.cols,CV_8UC1,pSalimg);
            
            vector<vector<Point>> contours;
            findContours(cloneImg,contours,RETR_EXTERNAL,CHAIN_APPROX_NONE);
            vector<Rect> boundRect;  //定义外接矩形集合

            for(int i=0; i< (int)contours.size(); i++)
             {
                double area = contourArea(contours[i],true);
                
                if(area < 0)
                   area = -area;

                if(area > AREATH)
                  {
                     Rect temRect = boundingRect(Mat(contours[i]));
                     boundRect.push_back(temRect);
                     //rectangle(resizeImg, Point(temRect.x, temRect.y), Point(temRect.x + temRect.width, temRect.y + temRect.height), Scalar(0, 255, 0), 2, 8);
                  }
                
                
             }
            
          //  vector<Mat> roi;

            
            bool flag4 = false;
            bool flag2 = false;
            for(int i = 0; i < (int)boundRect.size();i++)
              {
                 Rect temRect(boundRect[i].x, boundRect[i].y,boundRect[i].width,boundRect[i].height);
                 Mat roiImg = resizeImg(temRect);
                 Mat roiImgGray ;
                 Mat roiEdg;
                 cvtColor(roiImg,roiImgGray,COLOR_BGR2GRAY);
                 blur(roiImgGray,roiEdg,Size(3,3));
                 threshold(roiEdg, roiEdg, 0, 255, CV_THRESH_BINARY | CV_THRESH_OTSU);
                

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
                      if(maxLoc.x == 4 && maxVal * 100 > 70)
                        { 
                          /* cout << "识别结果：" << maxLoc.x << "  相似度:" << maxVal * 100 << "%" << endl;
                           imshow("test_image", test_image);
                           cvWaitKey(15);
                           */
                          flag4 = true;
                        }
                      if(maxLoc.x == 2 && maxVal * 100 > 70)
                          flag2 = true;
	             
                    }

                 vector<vector<Point>>().swap(roiContours); 
                 
                 if(flag4 && flag2)
                    {
                       rectangle(resizeImg, Point(boundRect[i].x, boundRect[i].y), Point(boundRect[i].x + boundRect[i].width, boundRect[i].y + boundRect[i].height), Scalar(0, 0, 255), 2, 8);
                       flag4 = false;
                       flag2 = false;
                    }
                   
              }
            
   
            
          //  imshow("cloneImg",cloneImg);
         
            delete []pCurImagedata;
            pCurImagedata = NULL;
            delete []pSeg;
            pSeg = NULL;
            delete []pSalimg;
            pSalimg = NULL;

            vector<vector<Point>>().swap(contours); 
            vector<Rect>().swap(boundRect);
            
            imshow("srcImg",resizeImg);
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
