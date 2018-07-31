#include <ros/ros.h>
#include <math.h>
#include<string>
#include"std_msgs/String.h"
#include"std_msgs/Int64.h"
#include"std_msgs/Float64.h"
/********************Goal:subscribe the carVel then send it********************/

class camera
{
public:
    camera();
    void spin();

private:
    ros::NodeHandle n;
  /*  ros::Subscriber odom_sub,imu_sub;
    ros::Publisher odom_pub,yaw_pub;

    tf::TransformBroadcaster broadcaster;

    double rate;

    double x;
    double y;
    double z_Angle;
 
    double vx;
    double vy;
    double vth;
    
    geometry_msgs::Quaternion  orientation;
    geometry_msgs::Vector3     angular_velocity;*/

    ros::Time current_time,last_time;

   /* void odom_callback(const patrol_robot::stm_to_pc::ConstPtr& odom_sub);
    void imu_callback(const sensor_msgs::Imu::ConstPtr& imu_sub);
    void init_variables();

    void update();*/
};


void camera::spin()
{
    ros::Rate loop_rate(rate);
    while(ros::ok())
    {
        update();
        loop_rate.sleep();
    }
}


int main(int argc,char **argv)
{
    ros::init(argc,argv,"send_odom");
    send_odom obj;
    obj.spin();
    return 0;
}
