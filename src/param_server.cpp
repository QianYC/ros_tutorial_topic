//
// Created by yc_qian on 19-12-17.
//
#include <ros/ros.h>
#include "ros_tutorial_topic/SrvTutorial.h"

#define PLUS 0
#define MINUS 1
#define MULTIPLY 2
#define DIVIDE 3

int op = PLUS;

bool operation(ros_tutorial_topic::SrvTutorialRequest &request, ros_tutorial_topic::SrvTutorialResponse &response){
    switch (op) {
        case PLUS:
            response.result = request.a + request.b;
            break;
        case MINUS:
            response.result = request.a - request.b;
            break;
        case MULTIPLY:
            response.result = request.a * request.b;
            break;
        case DIVIDE:
            response.result = request.b == 0 ? 0 : request.a / request.b;
            break;
        default:
            return false;
    }

    ROS_INFO("request: a = %d, b = %d", request.a, request.b);
    ROS_INFO("response: result = %d", response.result);

    return true;
}

int main(int argc, char **argv){
    ros::init(argc, argv, "param_server");
    ros::NodeHandle nodeHandle;
    nodeHandle.setParam("param_op", op);

    ros::ServiceServer server = nodeHandle.advertiseService("param_service", operation);
    ROS_INFO("param server started!");

    ros::Rate rate(10);
    while (ros::ok()) {
        ROS_INFO("loop");
        nodeHandle.getParam("param_op", op);
        ros::spinOnce();
        rate.sleep();
    }
    return 0;
}