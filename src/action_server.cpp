//
// Created by yc_qian on 19-12-16.
//
#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include "ros_tutorial_topic/FibAction.h"

class FibAction {
protected:
    ros::NodeHandle nh_;
    actionlib::SimpleActionServer<ros_tutorial_topic::FibAction> as_;
    std::string action_name_;
    ros_tutorial_topic::FibFeedback feedback_;
    ros_tutorial_topic::FibResult result_;

public:
    FibAction(std::string name):as_(nh_,name,boost::bind(&FibAction::executeCB,this,_1),false),action_name_(name) {
        as_.start();
    }

    ~FibAction() {

    }

    void executeCB(const ros_tutorial_topic::FibGoalConstPtr &goal) {
        ros::Rate rate(1);
        bool success = true;

        feedback_.sequence.clear();
        feedback_.sequence.push_back(0);
        feedback_.sequence.push_back(1);

        ROS_INFO("%s: action executing, creating fibonacci sequence of order %i with seeds %i, %i",
                action_name_.c_str(),goal->order,feedback_.sequence[0],feedback_.sequence[1]);

        for (int i = 1; i <= goal->order; ++i) {
            //cancelation
            if (as_.isPreemptRequested() || !ros::ok()) {
                ROS_INFO("%s: action preempted", action_name_.c_str());
                as_.setPreempted();
                success = false;
                break;
            }

            feedback_.sequence.push_back(feedback_.sequence[i] + feedback_.sequence[i - 1]);
            as_.publishFeedback(feedback_);
            rate.sleep();
        }

        if (success) {
            result_.sequence = feedback_.sequence;
            ROS_INFO("%s: action success",action_name_.c_str());
            as_.setSucceeded(result_);
        }
    }
};

int main(int argc, char **argv){
    ros::init(argc, argv, "action_server");

    FibAction action("action_fib");

    ros::spin();

    return 0;
}