#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose.h>
#include "ros/console.h"
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include "cameraTip.h"
#include <messages/LocalPlannerActionResult.h>
#include <messages/ChassisMode.h>
#include <math.h>
#include <nav_msgs/Odometry.h>

// used in adjust_pose
bool found_status = false;
int motion = 0;
int arrived_msg = 0;
bool arrived_bool = false;


nav_msgs::Odometry odom_msg;

void angleTrans(float ang ,float &x,float &y, float &z, float &w){
	float rad = ang*3.14/180;	
	x = 0;
	y = sin(rad/2);
	z = 0;	
	w = cos(rad/2);
}


void publishSpeed(ros::Publisher vel_pub_, float x, float y) { 
    geometry_msgs::Twist vel;
    vel.linear.y = y;
    vel.linear.x = x;
    vel_pub_.publish(vel);
}

void MTcallback(const cvCamera::cameraTip::ConstPtr &msg) {
  found_status = msg->camera_check;
  motion = msg->camera_info;
}





void pixedClose(int dis,float &x,float&y)
{
   float p = 0.01;
   x = 0;
   y = p * (float)dis;
   if(y>0.2)
       y = 0.2;
   if(y< -0.2)
       y = -0.2;  
}

void arrived_status_CB(const messages::LocalPlannerActionResult::ConstPtr &msg){
  arrived_msg = msg->status.status;
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "buff_navi_sm");

    enum MachineState{  initialize, navigate, // steps in buff_navi
			looking, found, stop, forward,  // steps in adjust_pose
			putdown};
    MachineState state = initialize;

    ros::NodeHandle n, nh;
    ros::Publisher goal_pub_ = n.advertise<geometry_msgs::PoseStamped>("move_base_simple/goal", 1000);
    ros::Publisher init_pub_ = n.advertise<geometry_msgs::PoseWithCovarianceStamped>("initialpose", 1000);
    ros::Subscriber movetip_sub_ = nh.subscribe<cvCamera::cameraTip>("/MoveTip", 100, MTcallback);
    ros::Subscriber arrived_sub_ = nh.subscribe<messages::LocalPlannerActionResult>("/local_planner_node_action/result", 5, arrived_status_CB);
  
    ros::NodeHandle v;
    ros::Publisher vel_pub_ = v.advertise<geometry_msgs::Twist>("/cmd_vel", 100, true);
    ros::ServiceClient client = n.serviceClient<messages::ChassisMode>("set_chassis_mode");
    messages::ChassisMode srv;


    float x = 0.0;
    float y = 0.0;
    int counter = 0;
    int mode_counter = 0;
    int mode_counter_1 = 0;


    while(ros::ok())
    {
        geometry_msgs::PoseStamped GoalPose;
        geometry_msgs::PoseWithCovarianceStamped initPose;
  

        switch (state)
        {
            case initialize:
                sleep(1); //wait for the robot to initialize, or odom will not be accurate
                ros::spinOnce();
                state = navigate;

                initPose.pose.pose.position.x = 1.135;
                initPose.pose.pose.position.y = 1.341;
                initPose.pose.pose.position.z = 0.0;
		float fuck1, fuck2, fuck3, fuck4;
                angleTrans(0, fuck1, fuck2 ,fuck3 ,fuck4);
		initPose.pose.pose.orientation.x = fuck1;
		initPose.pose.pose.orientation.y = fuck2;
		initPose.pose.pose.orientation.z = fuck3;
		initPose.pose.pose.orientation.w = fuck4;

                init_pub_.publish(initPose);
		
		/*srv.request.chassis_mode = 1;
                mode_counter_1 += 10;
                if (mode_counter_1 <=10){
                        if (client.call(srv))
                        {
                                ROS_INFO("setting chassis control mode to 1");
                        }
                        else
                        {
                                ROS_ERROR("Failed to call service set_chassis_mode");
                                return 1;
                        }

                }*/
                std::cout << "initializing navigation" << std::endl;
                break;

            case navigate:
        	//blue
               // GoalPose.pose.position.x = 3.55;
               // GoalPose.pose.position.y = 3.05;
		GoalPose.pose.position.x = 3.45;
		GoalPose.pose.position.y = 2.65;
		GoalPose.pose.orientation.x = 0.0;
		GoalPose.pose.orientation.y = 1.0;
		GoalPose.pose.orientation.z = 0.0;
                GoalPose.pose.orientation.w = 0.0;
                counter += 1;
                ros::spinOnce();
                std::cout << "navigating" << std::endl;
		
		if (arrived_msg == 3){
         		state = looking;
		}	
                break;

	    case looking:
                if (found_status)
                {
                    state = found;
                    std::cout << "box appeared in sight" << std::endl;
                }
                else
                  std::cout<<"box lost"<< std::endl;
                break;

            case found:
                if (motion<0)
                {
                    if (motion<-20)
                    {
                       /*  x = 0;
                         y = -0.3;*/

                       //  float dis = curPosition - lastPosition


                         pixedClose(motion,x,y);

              
			 arrived_bool = true;
                        std::cout << "moving left to approach the box" << std::endl;
                        break;
                    }
                    else
                    state = stop;

                }
                else if (motion>0)
                {
                    if(motion>20)
                    {

                           /* x = 0;
                            y = 0.3;*/
                            pixedClose(motion,x,y);
                            arrived_bool = true;
                            std::cout << "moving right to approach the box" << std::endl;
                            break;
                    }
                    else
                    state = stop;

                }
                ros::spinOnce();
                break;

            case stop:
                x = 0;
                y = 0;
                std::cout << "aligned to the box, adjustment stopped" << std::endl;
                state = putdown;
               /* if (!found_status)
                {
                        state = looking;
                        
                        std::cout << "box lost in sight" << std::endl;
                }
                */
                break;

	    case putdown:
		srv.request.chassis_mode = 4;
		mode_counter += 1;
                std::cout<<"putdown start"<<std::endl;
		//if (mode_counter <=20){
    			if (client.call(srv))
    			{
        			ROS_INFO("setting chassis control mode to put down #7");
    			}
    			else
    			{
        			ROS_ERROR("Failed to call service set_chassis_mode");
        			return 1;
    			}
		
        	//}
              
               
                
                std::cout << "putdown" << std::endl;
                break;
	}
        if (counter <=1){
            goal_pub_.publish(GoalPose);
        }
        if (arrived_bool){
	    publishSpeed(vel_pub_, x, y);
            usleep(50000);
        } 
        ros::spinOnce();
    }
}

