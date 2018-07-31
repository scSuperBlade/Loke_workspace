// Generated by gencpp from file messages/SelfCheckRequest.msg
// DO NOT EDIT!


#ifndef MESSAGES_MESSAGE_SELFCHECKREQUEST_H
#define MESSAGES_MESSAGE_SELFCHECKREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace messages
{
template <class ContainerAllocator>
struct SelfCheckRequest_
{
  typedef SelfCheckRequest_<ContainerAllocator> Type;

  SelfCheckRequest_()
    : self_check(false)  {
    }
  SelfCheckRequest_(const ContainerAllocator& _alloc)
    : self_check(false)  {
  (void)_alloc;
    }



   typedef uint8_t _self_check_type;
  _self_check_type self_check;





  typedef boost::shared_ptr< ::messages::SelfCheckRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::messages::SelfCheckRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SelfCheckRequest_

typedef ::messages::SelfCheckRequest_<std::allocator<void> > SelfCheckRequest;

typedef boost::shared_ptr< ::messages::SelfCheckRequest > SelfCheckRequestPtr;
typedef boost::shared_ptr< ::messages::SelfCheckRequest const> SelfCheckRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::messages::SelfCheckRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::messages::SelfCheckRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace messages

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'messages': ['/home/dji/roborts_ws/devel/share/messages/msg', '/home/dji/roborts_ws/src/RoboRTS/modules/stream/messages/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::messages::SelfCheckRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::messages::SelfCheckRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::messages::SelfCheckRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::messages::SelfCheckRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::messages::SelfCheckRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::messages::SelfCheckRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::messages::SelfCheckRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "00c9efa0aab569c1baff878b410bae3c";
  }

  static const char* value(const ::messages::SelfCheckRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x00c9efa0aab569c1ULL;
  static const uint64_t static_value2 = 0xbaff878b410bae3cULL;
};

template<class ContainerAllocator>
struct DataType< ::messages::SelfCheckRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "messages/SelfCheckRequest";
  }

  static const char* value(const ::messages::SelfCheckRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::messages::SelfCheckRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool self_check\n\
";
  }

  static const char* value(const ::messages::SelfCheckRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::messages::SelfCheckRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.self_check);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SelfCheckRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::messages::SelfCheckRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::messages::SelfCheckRequest_<ContainerAllocator>& v)
  {
    s << indent << "self_check: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.self_check);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MESSAGES_MESSAGE_SELFCHECKREQUEST_H