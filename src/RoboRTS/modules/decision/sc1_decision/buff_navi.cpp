#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose.h>
#include "boost/thread/mutex.hpp"
#include "boost/thread/thread.hpp"
#include "messages/Odometry.h"
#include "ros/console.h"
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "buff_navi_sm");

    enum MachineState{initialize, navigate};
    MachineState state = initialize;

    ros::NodeHandle n;
    ros::Publisher goal_pub_;

    goal_pub_ = n.advertise<geometry_msgs::PoseStamped>("move_base_simple/goal", 1000);
   
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
                break;
        }
        if (counter <= 1){
            goal_pub_.publish(GoalPose);
        }
        //usleep(50000); 
        ros::spinOnce();
    }
}
