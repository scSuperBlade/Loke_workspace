#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose.h>
//#include <nav_msgs/Odometry.h>
#include "boost/thread/mutex.hpp"
#include "boost/thread/thread.hpp"
#include "messages/Odometry.h"
#include "ros/console.h"
#include <geometry_msgs/PoseStamped.h>
#include <messages/cameraTip.h>
//#include </home/dji/RoboRTS_ros/devel/include/cvCamera/cameraTip>
//

void publishSpeed(ros::Publisher vel_pub_, float x, float y);
void MTcallback(const cvCamera::cameraTip::ConstPtr &msg);

bool found_status = false;
int motion = 0;


int main(int argc, char** argv)
{
    ros::init(argc, argv, "adjust_pose_sm");

    enum MachineState{looking, found, stop, forward};
    MachineState state = looking;

    //double distance = 0;
    //float last_position[2];

    ros::NodeHandle n, nh;
    ros::Publisher vel_pub_;
    ros::Subscriber movetip_sub_;

    vel_pub_ = n.advertise<geometry_msgs::Twist>("/cmd_vel", 100, true);
    movetip_sub_ = nh.subscribe<cvCamera::cameraTip>("/MoveTip", 100, MTcallback);

    float x = 0.0;
    float y = 0.0;

    while(ros::ok())
    {
        switch (state)
        {
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
        publishSpeed(vel_pub_, x, y);
        usleep(50000); 
        ros::spinOnce();
    }
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
