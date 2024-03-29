// Generated by gencpp from file ros_tutorial_topic/SrvTutorialResponse.msg
// DO NOT EDIT!


#ifndef ROS_TUTORIAL_TOPIC_MESSAGE_SRVTUTORIALRESPONSE_H
#define ROS_TUTORIAL_TOPIC_MESSAGE_SRVTUTORIALRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_tutorial_topic
{
template <class ContainerAllocator>
struct SrvTutorialResponse_
{
  typedef SrvTutorialResponse_<ContainerAllocator> Type;

  SrvTutorialResponse_()
    : result(0)  {
    }
  SrvTutorialResponse_(const ContainerAllocator& _alloc)
    : result(0)  {
  (void)_alloc;
    }



   typedef int32_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SrvTutorialResponse_

typedef ::ros_tutorial_topic::SrvTutorialResponse_<std::allocator<void> > SrvTutorialResponse;

typedef boost::shared_ptr< ::ros_tutorial_topic::SrvTutorialResponse > SrvTutorialResponsePtr;
typedef boost::shared_ptr< ::ros_tutorial_topic::SrvTutorialResponse const> SrvTutorialResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_tutorial_topic

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ros_tutorial_topic': ['/home/yc_qian/catkin_ws/src/ros_tutorial_topic/msg', '/home/yc_qian/catkin_ws/src/ros_tutorial_topic/cmake-build-debug/devel/share/ros_tutorial_topic/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "034a8e20d6a306665e3a5b340fab3f09";
  }

  static const char* value(const ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x034a8e20d6a30666ULL;
  static const uint64_t static_value2 = 0x5e3a5b340fab3f09ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_tutorial_topic/SrvTutorialResponse";
  }

  static const char* value(const ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 result\n\
\n\
";
  }

  static const char* value(const ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SrvTutorialResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_tutorial_topic::SrvTutorialResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<int32_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_TUTORIAL_TOPIC_MESSAGE_SRVTUTORIALRESPONSE_H
