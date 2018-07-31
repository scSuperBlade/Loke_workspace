/*
#include <messages/ChassisMode.h>
#include <messages/ChassisModeRequest.h>
#include <messages/ChassisModeResponse.h>
#include "modules/driver/serial/serial_com_node.h"

int main(int argc, char **argv)
{
  ros::init(argc, argv, "SetGoal_node");

  rrts::driver::serial::SerialComNode::SerialComNode object;
  
  ros::NodeHandle n;
  ros::ServiceServer chassis_mode_srv_ = n.advertiseService("set_chassis_mode", &object::SetChassisMode, this);

  bool received;

  messages::ChassisModeRequest ModeReq;
  messages::ChassisModeResponse ModeRes;
  ModeReq.chassis_mode = 04;

  //received = object::SetChassisMode(ModeReq, ModeRes);


//  ros::Publisher mode_pub_ = n.advertise<messages::ChassisModeRequest>("ChassisControl", 1);

//  ros::NodeHandle n2;
//  ros::Publisher initpose_pub_ = n2.advertise<geometry_msgs::PoseWithCovarianceStamped>("amcl_pose", 1);

//  geometry_msgs::PoseWithCovarianceStamped InitPose;
//  messages::ChassisModeRequest ModeReq;

//  ModeReq.chassis_control_data.ctrl_mode = 04;

  std::cout << received << std::endl;
  std::cout << "setting chassis control mode to dodge #4" << std::endl;
  ros::spinOnce();

  return 0;
}

*/

#include "ros/ros.h"
#include <messages/ChassisMode.h>
#include "modules/driver/serial/serial_com_node.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "mode_control_client");

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<messages::ChassisMode>("set_chassis_mode");
  messages::ChassisMode srv;
  while (ros::ok()){
    srv.request.chassis_mode = 7;
    if (client.call(srv))
    {
        ROS_INFO("setting chassis control mode to dodge #4");
    }
    else
    {
        ROS_ERROR("Failed to call service set_chassis_mode");
        return 1;
    }
  }


  

  return 0;
}
