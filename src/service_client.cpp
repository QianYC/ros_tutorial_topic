//
// Created by yc_qian on 19-12-16.
//
#include <ros/ros.h>
#include "ros_tutorial_topic/SrvTutorial.h"
#include <cstdlib>

int main(int argc, char **argv){
    ros::init(argc, argv, "service_client");
    if (argc < 3) {
        ROS_INFO("service_client requires 2 params : a, b");
        ROS_INFO("a : int, b : int");
        return 1;
    }
    ros::NodeHandle nodeHandle;

    ros::ServiceClient client = nodeHandle.serviceClient<ros_tutorial_topic::SrvTutorial>("service_add");

    ros_tutorial_topic::SrvTutorial srvTutorial;
    srvTutorial.request.a = atoi(argv[1]);
    srvTutorial.request.b = atoi(argv[2]);

    if (client.call(srvTutorial)) {
        ROS_INFO("the result of %d + %d is %d", srvTutorial.request.a, srvTutorial.request.b,
                 srvTutorial.response.result);
    } else {
        ROS_ERROR("failed to call service_add");
        return 1;
    }

    return 0;
}