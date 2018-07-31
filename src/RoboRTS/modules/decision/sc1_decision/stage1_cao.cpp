#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose.h>
#include "ros/console.h"
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include "cameraTip.h"
#include <messages/LocalPlannerActionResult.h>

// used in adjust_pose
bool found_status = false;
int motion = 0;
int arrived_msg = 0;
bool arrived_bool = false;

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

void arrived_status_CB(const messages::LocalPlannerActionResult::ConstPtr &msg){
  std::cout << "get" << std::endl;
  arrived_msg = msg->status.status;
  std::cout << msg->status.status << " "<<arrived_msg << std::endl;
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "buff_navi_sm");

    enum MachineState{  initialize, navigate, // steps in buff_navi
			looking // steps in adjust_pose
			};
    MachineState state = initialize;

    ros::NodeHandle n, nh;
    ros::Publisher goal_pub_ = n.advertise<geometry_msgs::PoseStamped>("move_base_simple/goal", 1000);
    ros::Subscriber movetip_sub_ = nh.subscribe<cvCamera::cameraTip>("/MoveTip", 100, MTcallback);
    ros::Subscriber arrived_sub_ = nh.subscribe<messages::LocalPlannerActionResult>("/local_planner_node_action/result", 5, arrived_status_CB);
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
                GoalPose.pose.position.x = 3.50;
                GoalPose.pose.position.y = 2.77;
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
                std::cout << "box appeared in sight" << std::endl;
                break;
	}
            
        if (counter <= 1){
            goal_pub_.publish(GoalPose);
        }
        if (arrived_bool){
	    publishSpeed(vel_pub_, x, y);
            usleep(50000);
        } 
        ros::spinOnce();
    }
}

