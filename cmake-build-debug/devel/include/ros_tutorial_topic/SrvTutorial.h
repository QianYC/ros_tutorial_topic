// Generated by gencpp from file ros_tutorial_topic/SrvTutorial.msg
// DO NOT EDIT!


#ifndef ROS_TUTORIAL_TOPIC_MESSAGE_SRVTUTORIAL_H
#define ROS_TUTORIAL_TOPIC_MESSAGE_SRVTUTORIAL_H

#include <ros/service_traits.h>


#include <ros_tutorial_topic/SrvTutorialRequest.h>
#include <ros_tutorial_topic/SrvTutorialResponse.h>


namespace ros_tutorial_topic
{

struct SrvTutorial
{

typedef SrvTutorialRequest Request;
typedef SrvTutorialResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SrvTutorial
} // namespace ros_tutorial_topic


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_tutorial_topic::SrvTutorial > {
  static const char* value()
  {
    return "a7d7d7065d45755acef7d4dcf908162a";
  }

  static const char* value(const ::ros_tutorial_topic::SrvTutorial&) { return value(); }
};

template<>
struct DataType< ::ros_tutorial_topic::SrvTutorial > {
  static const char* value()
  {
    return "ros_tutorial_topic/SrvTutorial";
  }

  static const char* value(const ::ros_tutorial_topic::SrvTutorial&) { return value(); }
};


// service_traits::MD5Sum< ::ros_tutorial_topic::SrvTutorialRequest> should match 
// service_traits::MD5Sum< ::ros_tutorial_topic::SrvTutorial > 
template<>
struct MD5Sum< ::ros_tutorial_topic::SrvTutorialRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_tutorial_topic::SrvTutorial >::value();
  }
  static const char* value(const ::ros_tutorial_topic::SrvTutorialRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_tutorial_topic::SrvTutorialRequest> should match 
// service_traits::DataType< ::ros_tutorial_topic::SrvTutorial > 
template<>
struct DataType< ::ros_tutorial_topic::SrvTutorialRequest>
{
  static const char* value()
  {
    return DataType< ::ros_tutorial_topic::SrvTutorial >::value();
  }
  static const char* value(const ::ros_tutorial_topic::SrvTutorialRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_tutorial_topic::SrvTutorialResponse> should match 
// service_traits::MD5Sum< ::ros_tutorial_topic::SrvTutorial > 
template<>
struct MD5Sum< ::ros_tutorial_topic::SrvTutorialResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_tutorial_topic::SrvTutorial >::value();
  }
  static const char* value(const ::ros_tutorial_topic::SrvTutorialResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_tutorial_topic::SrvTutorialResponse> should match 
// service_traits::DataType< ::ros_tutorial_topic::SrvTutorial > 
template<>
struct DataType< ::ros_tutorial_topic::SrvTutorialResponse>
{
  static const char* value()
  {
    return DataType< ::ros_tutorial_topic::SrvTutorial >::value();
  }
  static const char* value(const ::ros_tutorial_topic::SrvTutorialResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_TUTORIAL_TOPIC_MESSAGE_SRVTUTORIAL_H