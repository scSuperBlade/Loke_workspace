#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose.h>
#include "ros/console.h"
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include "cameraTip.h"
#include <actionlib_msgs/GoalStatusArray>

// used in adjust_pose
bool found_status = false;
int motion = 0;
int arrived_msg = 0;
bool vel_prohibiter = true;

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

void arrived_status_CB(const actionlib_msgs::GoalStatusArray::ConstPtr &msg){
  arrived_msg = msg->status_list.status;
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "buff_navi_sm");

    enum MachineState{  initialize, navigate, // steps in buff_navi
			looking, found, stop, forward  // steps in adjust_pose
			};
    MachineState state = initialize;

    ros::NodeHandle n, nh;
    ros::Publisher goal_pub_ = n.advertise<geometry_msgs::PoseStamped>("move_base_simple/goal", 1000);
    ros::Subscriber movetip_sub_ = nh.subscribe<cvCamera::cameraTip>("/MoveTip", 100, MTcallback);
    ros::Subscriber arrived_sub_ = nh.subscribe<actionlib_msgs::GoalStatusArray>("/global_planner_node_action/status", 5, arrived_status_CB);
    ros::NodeHandle v;
    ros::Publisher vel_pub_ = v.advertise<geometry_msgs::Twist>("/cmd_vel", 100, true);


    float x = 0.0;
    float y = 0.0;
    int counter = 0;

    while(ros::ok())
    {
        geometry_msgs::PoseStamped GoalPose;
        switch (state)
        {
            case initialize:
                sleep(1); //wait for the robot to initialize, or odom will not be accurate
                ros::spinOnce();
                state = navigate;
                std::cout << "initializing navigation" << std::endl;
                break;

            case navigate:
                GoalPose.pose.position.x = 4.11;
                GoalPose.pose.position.y = 2.77;
		GoalPose.pose.orientation.x = 0.0;
		GoalPose.pose.orientation.y = 1.0;
		GoalPose.pose.orientation.z = 0.0;
                GoalPose.pose.orientation.w = 0.0;
                counter += 1;
                ros::spinOnce();
                std::cout << "navigating" << std::endl;
		if (arrived_msg == 3){
		    //state = looking;
		}
                break;

	    case looking:
                if (found_status)
                {
                    state = found;
                    std::cout << "box appeared in sight" << std::endl;
                }
                break;

            case found:
                if (motion<0)
                {
                    if (motion<-50)
                    {
                         x = 0;
                         y = -0.3;
			 vel_prohibiter = false;
                        std::cout << "moving left to approach the box" << std::endl;
                        break;
                    }
                    else
                    state = stop;

                }
                else if (motion>0)
                {
                    if(motion>50)
                    {

                            x = 0;
                            y = 0.3;
                            vel_prohibiter = false;
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
                //state = forward;
                if (!found_status)
                {
                        state = looking;
                        
                        std::cout << "box lost in sight" << std::endl;
                }
                break;
        }
        if (counter <= 1){
            goal_pub_.publish(GoalPose);
        }
        if (vel_prohibiter == false){
	//    publishSpeed(vel_pub_, x, y);
            usleep(50000);
        } 
        ros::spinOnce();
    }
}


