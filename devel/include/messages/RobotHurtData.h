// Generated by gencpp from file messages/RobotHurtData.msg
// DO NOT EDIT!


#ifndef MESSAGES_MESSAGE_ROBOTHURTDATA_H
#define MESSAGES_MESSAGE_ROBOTHURTDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace messages
{
template <class ContainerAllocator>
struct RobotHurtData_
{
  typedef RobotHurtData_<ContainerAllocator> Type;

  RobotHurtData_()
    : header()
    , armor_type(0)
    , hurt_type(0)  {
    }
  RobotHurtData_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , armor_type(0)
    , hurt_type(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int16_t _armor_type_type;
  _armor_type_type armor_type;

   typedef int16_t _hurt_type_type;
  _hurt_type_type hurt_type;





  typedef boost::shared_ptr< ::messages::RobotHurtData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::messages::RobotHurtData_<ContainerAllocator> const> ConstPtr;

}; // struct RobotHurtData_

typedef ::messages::RobotHurtData_<std::allocator<void> > RobotHurtData;

typedef boost::shared_ptr< ::messages::RobotHurtData > RobotHurtDataPtr;
typedef boost::shared_ptr< ::messages::RobotHurtData const> RobotHurtDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::messages::RobotHurtData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::messages::RobotHurtData_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace messages

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'messages': ['/home/dji/roborts_ws/devel/share/messages/msg', '/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::messages::RobotHurtData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::messages::RobotHurtData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::messages::RobotHurtData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::messages::RobotHurtData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::messages::RobotHurtData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::messages::RobotHurtData_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::messages::RobotHurtData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "802a8244ba552af5959fc38d50ee9b26";
  }

  static const char* value(const ::messages::RobotHurtData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x802a8244ba552af5ULL;
  static const uint64_t static_value2 = 0x959fc38d50ee9b26ULL;
};

template<class ContainerAllocator>
struct DataType< ::messages::RobotHurtData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "messages/RobotHurtData";
  }

  static const char* value(const ::messages::RobotHurtData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::messages::RobotHurtData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
int16 armor_type\n\
int16 hurt_type\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::messages::RobotHurtData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::messages::RobotHurtData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.armor_type);
      stream.next(m.hurt_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotHurtData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::messages::RobotHurtData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::messages::RobotHurtData_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "armor_type: ";
    Printer<int16_t>::stream(s, indent + "  ", v.armor_type);
    s << indent << "hurt_type: ";
    Printer<int16_t>::stream(s, indent + "  ", v.hurt_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MESSAGES_MESSAGE_ROBOTHURTDATA_H
