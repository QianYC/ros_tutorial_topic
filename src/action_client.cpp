//
// Created by yc_qian on 19-12-16.
//
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include "ros_tutorial_topic/FibAction.h"
#include <cstdlib>

int main(int argc, char **argv){
    ros::init(argc, argv, "action_client");

    if (argc != 3) {
        ROS_INFO("action client needs 2 params: goal, timeout");
        ROS_INFO("goal: int, timeout: double");
        return 1;
    }

    actionlib::SimpleActionClient<ros_tutorial_topic::FibAction> client("action_fib", true);

    ROS_INFO("waiting for action server to start");
    client.waitForServer();

    ROS_INFO("action server started, sending goals");
    ros_tutorial_topic::FibGoal goal;
    goal.order = atoi(argv[1]);
    client.sendGoal(goal);

    bool finish_before_timeout = client.waitForResult(ros::Duration(atof(argv[2])));
    if (!finish_before_timeout) {
        client.cancelGoal();
    }

    actionlib::SimpleClientGoalState state = client.getState();
    ROS_INFO("action state: %s",state.toString().c_str());

    return 0;
}