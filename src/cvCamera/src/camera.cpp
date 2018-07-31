/*-----------------------------------【程序说明】----------------------------------------------
程序名称:openCV识别红蓝环特征+霍夫圆判断
开发所用IDE版本：gedit, linux
开发所用OpenCV版本： 3.2
2018.07.22 Create by 车凯威,周浩
识别精度：识别圆颜色，霍夫圆检测，边缘检测，神经网络识别，多帧检测五种方式综合使用后，发现40cm前后距离，20cm左右距离以内，能准确识别出圆中心42.
下一步任务：调参
------------------------------------------------------------------------------------------------
*/
//-----------------------------------【头文件包含部分】---------------------------------------
//            描述：包含程序所依赖的头文件
//----------------------------------------------------------------------------------------------
#include <ros/ros.h>
#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
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
#include <opencv2/ml.hpp>
//-----------------------------------【命名空间声明部分】---------------------------------------
//            描述：包含程序所使用的命名空间
//-----------------------------------------------------------------------------------------------
using namespace std;
using namespace cv;
using namespace ml;

//-----------------------------------【全局变量声明部分】--------------------------------------
//            描述：全局变量声明
//-----------------------------------------------------------------------------------------------

#define FPS  6
#define AREATH 10000
#define MINARE 200
#define MAXARE 2500

//红蓝圆环检测使用参数(参照 霍夫圆+颜色识别.png)
vector<Point> points;
Point center;
int iLowH = 0;
int iHighH = 179;
int iLowS = 144;
int iHighS = 255;
int iLowV = 18;
int iHighV = 251;

int iLowH2 = 83;
int iHighH2 = 138;
int iLowS2 = 154;
int iHighS2 = 255;
int iLowV2 = 0;
int iHighV2 = 179;

int P1 = 255;
int P2 = 48;
int PMin = 19;
int PMax = 554;
int PDis = 1000;
int PElement = 2;
int Pcanny = 45;

int SML = 60;

int nGaussianBlurValue = 3; //高斯滤波值
int g_nStructElementSize = 5; //结构元素(内核矩阵)的尺寸
int g_nStructElementSize2 = 5; //结构元素(内核矩阵)的尺寸

float disThr = 50; // 帧与帧目标距离阈值

int fps = 3;

//-----------------------------------【全局函数声明部分】--------------------------------------
//            描述：全局函数声明
//-----------------------------------------------------------------------------------------------
void createTrackbar();




/*函数铺垫*/
class camera
{
public:
    camera();
    void spin();
private:
    ros::NodeHandle n;
    ros::Publisher camera_pub;
    ros::Time current_time,last_time;
    double rate;
};


camera::camera()
{
    //current_time = ros::Time::now();
    //last_time = ros::Time::now();
	
    //设定publish的topic
    camera_pub = n.advertise<cvCamera::cameraTip>("MoveTip",100);
    rate = 100;
}


/*主函数*/
void camera::spin()
{
    //
    const int image_cols = 8;
    const int image_rows = 16;

    //设定相机参数
    CvCapture* capture = cvCreateCameraCapture(0);
    IplImage *frame = 0;
    frame = cvQueryFrame(capture);
    int fpsFlag = 0;
    ros::Rate r(rate);

    Point *tagPoint = new Point[fps];
    Point curPoint,lastPoint;

    //创建调参条
   // createTrackbar();

    bool  findFlag = false;
        
    int totalFPS = 0;
    //主循环
    while(ros::ok())
    {
        frame = cvQueryFrame(capture);
        Mat srcImg = cvarrToMat(frame);
        //选择处理对象：相机或图片
        //Mat imgOriginal = imread("/home/dji/桌面/zhongjianrgb.png");
        Mat imgOriginal = srcImg;
        Mat imgColor = imgOriginal.clone();
        Mat imgEdge = imgOriginal.clone();
        Mat imgCircle = imgOriginal.clone();
        Mat img42 = imgOriginal.clone();
        Mat img42_final = imgOriginal.clone();
       // imshow("imgOriginal",imgOriginal);

/*找圆方法 */
//红蓝圆环颜色检测
//输入参数：imgColor（三通道RGB图像）
//输出参数：imgThresholded（二值化图像）
/*
        //HSV变换
        Mat imgHSV;
        vector<Mat> hsvSplit;
        cvtColor(imgColor, imgHSV, COLOR_BGR2HSV);
	
        //第一次开闭环操作
        Mat element1 = getStructuringElement(MORPH_RECT, Size(g_nStructElementSize, g_nStructElementSize));
        morphologyEx(imgHSV, imgHSV, MORPH_OPEN, element1);
        morphologyEx(imgHSV, imgHSV, MORPH_CLOSE, element1);
        //imshow("firstOC", imgHSV);

        //均值化操作
        split(imgHSV, hsvSplit);
        equalizeHist(hsvSplit[2], hsvSplit[2]);
        merge(hsvSplit, imgHSV);

        //颜色选取并二值化操作
        Mat imgThresholded;
        Mat ch1;
        Mat ch2;
        inRange(imgHSV, Scalar(iLowH, iLowS, iLowV), Scalar(iHighH, iHighS, iHighV), ch1);
        inRange(imgHSV, Scalar(iLowH2, iLowS2, iLowV2), Scalar(iHighH2, iHighS2, iHighV2), ch2);
        bitwise_or(ch1, ch2, imgThresholded);
        //imshow("inrange", imgThresholded);

        //第二次开闭环操作
        Mat element2 = getStructuringElement(MORPH_RECT, Size(g_nStructElementSize2, g_nStructElementSize2));
        morphologyEx(imgThresholded, imgThresholded, MORPH_OPEN, element2);
        morphologyEx(imgThresholded, imgThresholded, MORPH_CLOSE, element2);
        imshow("secondOC", imgThresholded);
*/
        //获得边框
/*
	vector<vector<Point>> contours;
	vector<Vec4i> hierarcy;
	findContours(imgThresholded, contours, hierarcy, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_NONE);
	drawContours(imgOriginal, contours, -1, Scalar(0, 255, 0), 2);
	imshow("Final", imgOriginal);

*/


//边缘检测圆环
//输入参数：imgColor（三通道RGB图像）
//输出参数：imgEdge（二值化图像）

	//将原图像转换为灰度图像
	Mat imgGray;
	cvtColor(imgColor, imgGray, CV_BGR2GRAY);
	//imshow("imgGray", imgGray);

	//均值化
	equalizeHist(imgGray,imgGray);	
	
	//3x3内核来降噪
	blur(imgGray, imgGray, Size(3, 3));
		
	//高斯滤波
	int nGaussianBlurValue = 3;
	GaussianBlur(imgGray, imgGray, Size(nGaussianBlurValue * 2 - 1, nGaussianBlurValue * 2 - 1), 0, 0);

	//运行Canny算子
	Mat imgCanny;
	Canny(imgGray, imgCanny, Pcanny, Pcanny * 3, 3);
	//imshow("imgCanny", imgCanny);

        threshold(imgCanny, imgCanny, 0, 255, CV_THRESH_BINARY | CV_THRESH_OTSU);
  //          imshow("imgCanny", imgCanny);
      //  Mat element = getStructuringElement(MORPH_RECT, Size(9, 9));
	    //dilate(temImage,temImage,element);
     //   morphologyEx(imgCanny, imgEdge, cv::MORPH_CLOSE, element);

	//进行腐蚀膨胀操作
	//Mat element = getStructuringElement(MORPH_RECT, Size(PElement, PElement));
	//erode(imgCanny, imgCanny, element);
	//dilate(imgCanny, imgEdge, element);

	//imshow("imgEdge2", imgEdge);

//霍夫圆判断
//输入参数：imgThresholded（单通道图像）
//输出参数：imgCircle（三通道RGB图像）
        //vector<Vec3f> circles;
        //HoughCircles(imgEdge, circles, CV_HOUGH_GRADIENT,  1.5, PDis, P1, P2, PMin, PMax);

        vector<vector<Point>> contours;
        findContours(imgCanny,contours,RETR_LIST,CHAIN_APPROX_NONE);
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
                    // rectangle(imgCircle, Point(temRect.x, temRect.y), Point(temRect.x + temRect.width, temRect.y + temRect.height), Scalar(0, 255, 0), 2, 8);
                  }
                
                
            }
    //        imshow("imgCircle", imgCircle);

//神经网络识别数字
//输入参数：imgThresholded（三通道RGB图像）
//输出参数：img42_final（三通道RGB图像）
        //Ptr<ANN_MLP> model = ANN_MLP::load("/home/dji/catkin_ws_42/src/cvCamera/src/bpcharModel.xml"); //test_model
        Ptr<ANN_MLP> model = ANN_MLP::load("/home/dji/roborts_ws/src/cvCamera/src/bpcharModel.xml"); //test_model

        bool flag4 = false;
        bool flag2 = false;
        
     

  

        int targetPointX = 0;
        int targetPointY = 0;
        int total = 0;
        for(int i = 0; i < (int)boundRect.size();i++) {

            Rect temRect((int)boundRect[i].x, (int)boundRect[i].y, (int)boundRect[i].width, (int)boundRect[i].height);

            if(((boundRect[i].x + boundRect[i].width) > srcImg.cols) || ((boundRect[i].y + boundRect[i].height) > srcImg.rows))
                cout<<"errow!"<<endl;

            Mat roiImg = srcImg(temRect);
            Mat roiImgGray;
            Mat roiEdg;
            cvtColor(roiImg, roiImgGray, COLOR_BGR2GRAY);
            // blur(roiImgGray,roiEdg,Size(3,3));
            threshold(roiImgGray, roiEdg, 0, 255, CV_THRESH_BINARY | CV_THRESH_OTSU);
            //threshold(roiImgGray, roiEdg, 10, 255, CV_THRESH_BINARY);

            vector <vector<Point>> roiContours;
            findContours(roiEdg, roiContours, RETR_LIST, CHAIN_APPROX_NONE);



            for (int ii = 0; ii < (int) roiContours.size(); ii++) {
                Rect temRect = boundingRect(Mat(roiContours[ii]));
                Mat numImg = roiEdg(temRect);
                Mat test_image = numImg;
                // cvtColor(numImg,numImg,COLOR_BGR2GRAY);
                // blur(numImg,numImg,Size(3,3));


                Mat test_temp;
                resize(numImg, test_temp, Size(image_cols, image_rows), (0, 0), (0, 0),
                       CV_INTER_AREA);//使用象素关系重采样。当图像缩小时候，该方法可以避免波纹出现
                //threshold(test_temp, test_temp, 0, 255, CV_THRESH_BINARY | CV_THRESH_OTSU);
                Mat_<float> sampleMat(1, image_rows * image_cols);
                for (int iii = 0; iii < image_rows * image_cols; ++iii) {
                    sampleMat.at<float>(0, iii) = (float) test_temp.at<uchar>(iii / 8, iii % 8);
                }

                Mat responseMat;
                model->predict(sampleMat, responseMat);

                Point maxLoc;
                double maxVal = 0;
                minMaxLoc(responseMat, NULL, &maxVal, NULL, &maxLoc);
                if (maxLoc.x == 4 && maxVal * 100 > SML) {
                     cout << "识别结果：" << maxLoc.x << "  相似度:" << maxVal * 100 << "%" << endl;
                    flag4 = true;

                }
                if (maxLoc.x == 2 && maxVal * 100 > SML) {
                    flag2 = true;
                     cout << "识别结果：" << maxLoc.x << "  相似度:" << maxVal * 100 << "%" << endl;
                }

            }

            vector < vector < Point >> ().swap(roiContours);

            if (flag4 || flag2) {
                // rectangle(img42_final, Point(boundRect[i].x, boundRect[i].y), Point(boundRect[i].x + boundRect[i].width, boundRect[i].y + boundRect[i].height), Scalar(0, 0, 255), 2, 8);


              
                targetPointX += boundRect[i].x + boundRect[i].width / 2;
                targetPointY += boundRect[i].y + boundRect[i].height / 2;
                total++;
               
                flag4 = false;
                flag2 = false;
            }
            // imshow("img42", img42);
            // imshow("img42_final", img42_final);
        }

        if(total > 0)
          {
             tagPoint[fpsFlag].x = targetPointX / total;
             tagPoint[fpsFlag].y = targetPointY / total;
          
             fpsFlag++;
          }

       

        vector<Rect>().swap(boundRect) ;
        //vector<Vec3f>().swap(circles);
        vector<vector<Point>> swap(contours);
        
        totalFPS++;
        cvCamera::cameraTip move;
        if(fpsFlag == fps)
        {
            int sum = 0;
            int avgX = tagPoint[0].x;
            int avgY = tagPoint[0].y;
            for(int i = 1;i < fps;i++)
            {
                sum += sqrt(pow((tagPoint[i].x - tagPoint[i - 1].x),2) + pow((tagPoint[i].y - tagPoint[i - 1].y),2));
                avgX += tagPoint[i].x;
                avgY += tagPoint[i].y;
            }


            //circle(img42_final, (10, 10), 10, Scalar(0, 0, 255));

            if(sum / fps < disThr)
            {
                Point p((int)avgX/fps,(int)avgY/fps);
                circle(img42_final, p, 10, Scalar(0, 0, 255));
                curPoint = p;

                findFlag = true;

                //send info
                move.camera_info = curPoint.x - img42_final.cols/2;
                move.camera_check = true;

            }

            else 
               {
                 move.camera_info = lastPoint.x - img42_final.cols/2;
                 move.camera_check = true;
               }
               


            fpsFlag = 0;
        }

        else if(findFlag && fpsFlag != fps)
          {
            move.camera_info = lastPoint.x - img42_final.cols/2;
            move.camera_check = true;
          }

        else
           move.camera_check = false;
         

        camera_pub.publish(move);

        lastPoint = curPoint;

        if(totalFPS == fps)
        {
            totalFPS = 0;
            fpsFlag = 0;
           // findFlag = false;
        }

        Point srcCenter(img42_final.cols/2, img42_final.rows/2);
        circle(img42_final, srcCenter, 10, Scalar(0, 255, 0));
       // imshow("img42_final", img42_final);
        //imshow("img42", img42);
        //boundRect.push_back(temRect);
        //绘制圆心
        //circle(imgCircle, center, 3, Scalar(0, 255, 0), -1, 8, 0);

        //绘制圆轮廓

        //circle(imgCircle, center, radius, Scalar(155, 50, 255), 3, 7, 0);

//找圆结束


/*发送topic*/
//输入参数：
//输出参数：
//方法：



        //point move = x-imgx



/*函数铺垫*/
        cvWaitKey(15);
        ros::spinOnce();
        r.sleep();
    }
    delete []tagPoint;
    tagPoint = NULL;
    cvReleaseCapture(&capture);
    cvReleaseImage(&frame);
}


//-----------------------------------【main( )函数】--------------------------------------------
//            
//-----------------------------------------------------------------------------------------------

int main(int argc,char **argv)
{

    ros::init(argc,argv,"camera");
    camera obj;
    obj.spin();
    return 0;
}


void createTrackbar()
{

    //滑条选色
    namedWindow("Control");
    cvCreateTrackbar("LowH", "Control", &iLowH, 179); //Hue (0 - 179)
    cvCreateTrackbar("HighH", "Control", &iHighH, 179);

    cvCreateTrackbar("LowS", "Control", &iLowS, 255); //Saturation (0 - 255)
    cvCreateTrackbar("HighS", "Control", &iHighS, 255);

    cvCreateTrackbar("LowV", "Control", &iLowV, 255); //Value (0 - 255)
    cvCreateTrackbar("HighV", "Control", &iHighV, 255);

    namedWindow("Circle");
    cvCreateTrackbar("P1", "Circle", &P1, 255);
    cvCreateTrackbar("P2", "Circle", &P2, 255);
    cvCreateTrackbar("PMin", "Circle", &PMin, 255);
    cvCreateTrackbar("PMax", "Circle", &PMax, 1000);
    cvCreateTrackbar("PDis", "Circle", &PDis, 1000);
    cvCreateTrackbar("PElement", "Circle", &PElement, 10);
    cvCreateTrackbar("Pcanny", "Circle", &Pcanny, 100);
    cvCreateTrackbar("SML", "Circle", &SML, 100);



    namedWindow("Control2");
    cvCreateTrackbar("LowH2", "Control2", &iLowH2, 179); //Hue (0 - 179)
    cvCreateTrackbar("HighH2", "Control2", &iHighH2, 179);

    cvCreateTrackbar("LowS2", "Control2", &iLowS2, 255); //Saturation (0 - 255)
    cvCreateTrackbar("HighS2", "Control2", &iHighS2, 255);

    cvCreateTrackbar("LowV2", "Control2", &iLowV2, 255); //Value (0 - 255)
    cvCreateTrackbar("HighV2", "Control2", &iHighV2, 255);
/*
	namedWindow("内核尺寸");
	//创建轨迹条
	cvCreateTrackbar("第一次开闭环操作内核尺寸", "内核尺寸", &g_nStructElementSize, 21);
	cvCreateTrackbar("第二次开闭环操作内核尺寸", "内核尺寸", &g_nStructElementSize2, 21);*/
}


