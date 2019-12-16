//
// Created by yc_qian on 19-12-16.
//
#include<ros/ros.h>
#include "ros_tutorial_topic/MsgTutorial.h"

void msgCallback(const ros_tutorial_topic::MsgTutorial::ConstPtr &msg) {
    ROS_INFO("recieve msg at %d", msg->stamp.sec);
    ROS_INFO("msg = %d", msg->data);
}

int main(int argc, char **argv){
    ros::init(argc, argv, "topic_subscriber");
    ros::NodeHandle nodeHandle;

    ros::Subscriber subscriber = nodeHandle.subscribe("ros_tutorial_msg", 100, msgCallback);

    ros::spin();

    return 0;
}