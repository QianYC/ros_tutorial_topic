;; Auto-generated. Do not edit!


(when (boundp 'ros_tutorial_topic::SrvTutorial)
  (if (not (find-package "ROS_TUTORIAL_TOPIC"))
    (make-package "ROS_TUTORIAL_TOPIC"))
  (shadow 'SrvTutorial (find-package "ROS_TUTORIAL_TOPIC")))
(unless (find-package "ROS_TUTORIAL_TOPIC::SRVTUTORIAL")
  (make-package "ROS_TUTORIAL_TOPIC::SRVTUTORIAL"))
(unless (find-package "ROS_TUTORIAL_TOPIC::SRVTUTORIALREQUEST")
  (make-package "ROS_TUTORIAL_TOPIC::SRVTUTORIALREQUEST"))
(unless (find-package "ROS_TUTORIAL_TOPIC::SRVTUTORIALRESPONSE")
  (make-package "ROS_TUTORIAL_TOPIC::SRVTUTORIALRESPONSE"))

(in-package "ROS")





(defclass ros_tutorial_topic::SrvTutorialRequest
  :super ros::object
  :slots (_a _b ))

(defmethod ros_tutorial_topic::SrvTutorialRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ;; int32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;; int32 _b
       (write-long _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_tutorial_topic::SrvTutorialResponse
  :super ros::object
  :slots (_result ))

(defmethod ros_tutorial_topic::SrvTutorialResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_tutorial_topic::SrvTutorial
  :super ros::object
  :slots ())

(setf (get ros_tutorial_topic::SrvTutorial :md5sum-) "a7d7d7065d45755acef7d4dcf908162a")
(setf (get ros_tutorial_topic::SrvTutorial :datatype-) "ros_tutorial_topic/SrvTutorial")
(setf (get ros_tutorial_topic::SrvTutorial :request) ros_tutorial_topic::SrvTutorialRequest)
(setf (get ros_tutorial_topic::SrvTutorial :response) ros_tutorial_topic::SrvTutorialResponse)

(defmethod ros_tutorial_topic::SrvTutorialRequest
  (:response () (instance ros_tutorial_topic::SrvTutorialResponse :init)))

(setf (get ros_tutorial_topic::SrvTutorialRequest :md5sum-) "a7d7d7065d45755acef7d4dcf908162a")
(setf (get ros_tutorial_topic::SrvTutorialRequest :datatype-) "ros_tutorial_topic/SrvTutorialRequest")
(setf (get ros_tutorial_topic::SrvTutorialRequest :definition-)
      "int32 a
int32 b
---
int32 result

")

(setf (get ros_tutorial_topic::SrvTutorialResponse :md5sum-) "a7d7d7065d45755acef7d4dcf908162a")
(setf (get ros_tutorial_topic::SrvTutorialResponse :datatype-) "ros_tutorial_topic/SrvTutorialResponse")
(setf (get ros_tutorial_topic::SrvTutorialResponse :definition-)
      "int32 a
int32 b
---
int32 result

")



(provide :ros_tutorial_topic/SrvTutorial "a7d7d7065d45755acef7d4dcf908162a")


