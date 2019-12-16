//
// Created by yc_qian on 19-12-16.
//
#include <ros/ros.h>
#include "ros_tutorial_topic/FibAction.h"

void feedbackCallback(const ros_tutorial_topic::FibActionFeedback::ConstPtr &feedback){
    ROS_INFO("got a feedback");
    auto it = feedback->feedback.sequence.begin();
    while (it != feedback->feedback.sequence.end()) {
        ROS_INFO("\t%d", *it);
        it++;
    }
    ROS_INFO("feedback complete");
}

int main(int argc, char **argv){
    ros::init(argc, argv, "action_listener");
    ros::NodeHandle nodeHandle;

    ros::Subscriber subscriber = nodeHandle.subscribe("action_fib/feedback", 5, feedbackCallback);

    ros::spin();
    return 0;
}
