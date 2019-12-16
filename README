# ros_tutorial_topic

**although this package name ends with topic, it not only shows the publish-subscribe pattern in ROS, but also shows how to use service and action in ROS**

## 0 environment

```
Ubuntu 16.04

ROS Kinetic
```

## 1 build the whole package

```cm```

**before you run any ROS node, execute 'roscore' command!**

## 2 publish-subscribe pattern

### 2.0 keywords

unidirectional

### 2.1 run the publisher

```rosrun ros_tutorial_topic topic_publisher```

### 2.2 run the subscriber

```rosrun ros_tutorial_topic topic_sibscriber```

### 2.3 the message files

'*.msg' files in the 'msg' folder define the messages that are transmitted from publisher to subscriber

## 3 service server & client

### 3.0 keywords

bidirectional synchronized

### 3.1 run the service server

```rosrun ros_tutorial_topic service_server```

### 3.2 run the service client

```rosrun ros_tutorial_topic service_client arg1 arg2```

### 3.3 the service files

'*.srv' files in the 'srv' folder defines the requests and responses used by server and client

## 4 action server & client

### 4.0 keywords

bidirectional asynchronized feedback

### 4.1 run the action server

```rosrun ros_tutorial_topic action_server```

### 4.2 run the action client

```rosrun ros_tutorial_topic action_client arg1 arg2```

### 4.3 see the feedback

```rosrun ros_tutorial_topic action_listener```

or use the ros provided function

```rostopic echo action_fib/feedback```
