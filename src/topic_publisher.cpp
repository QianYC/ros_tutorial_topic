#include<ros/ros.h>
#include "ros_tutorial_topic/MsgTutorial.h"

int main(int argc, char **argv){
    ros::init(argc, argv, "topic_publisher");
    ros::NodeHandle nodeHandle;
    ros::Publisher publisher = nodeHandle.advertise<ros_tutorial_topic::MsgTutorial>("ros_tutorial_msg", 10);
    ros::Rate loop_rate(10);

    ros_tutorial_topic::MsgTutorial msgTutorial;
    int count = 10;

    while (ros::ok()) {
        msgTutorial.stamp = ros::Time::now();
        msgTutorial.data = count;

        //ROS log function
        ROS_INFO("send msg at : %d", msgTutorial.stamp.sec);
        ROS_INFO("msg = %d", msgTutorial.data);

        publisher.publish(msgTutorial);
        loop_rate.sleep();
        count++;
    }
    return 0;
}