//
// Created by yc_qian on 19-12-16.
//
#include <ros/ros.h>
#include "ros_tutorial_topic/SrvTutorial.h"

bool
service_add(ros_tutorial_topic::SrvTutorial::Request &request, ros_tutorial_topic::SrvTutorial::Response &response) {
    response.result = request.a + request.b;
    ROS_INFO("request a = %d, b = %d", request.a, request.b);
    return true;
}

int main(int argc, char **argv){
    ros::init(argc, argv, "service_server");
    ros::NodeHandle nodeHandle;

    ros::ServiceServer server = nodeHandle.advertiseService("service_add", service_add);

    ROS_INFO("server started!");

    ros::spin();

    return 0;
}