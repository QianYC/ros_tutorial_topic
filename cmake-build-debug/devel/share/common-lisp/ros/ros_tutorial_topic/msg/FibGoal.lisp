; Auto-generated. Do not edit!


(cl:in-package ros_tutorial_topic-msg)


;//! \htmlinclude FibGoal.msg.html

(cl:defclass <FibGoal> (roslisp-msg-protocol:ros-message)
  ((order
    :reader order
    :initarg :order
    :type cl:integer
    :initform 0))
)

(cl:defclass FibGoal (<FibGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FibGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FibGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_tutorial_topic-msg:<FibGoal> is deprecated: use ros_tutorial_topic-msg:FibGoal instead.")))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <FibGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tutorial_topic-msg:order-val is deprecated.  Use ros_tutorial_topic-msg:order instead.")
  (order m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FibGoal>) ostream)
  "Serializes a message object of type '<FibGoal>"
  (cl:let* ((signed (cl:slot-value msg 'order)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FibGoal>) istream)
  "Deserializes a message object of type '<FibGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FibGoal>)))
  "Returns string type for a message object of type '<FibGoal>"
  "ros_tutorial_topic/FibGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FibGoal)))
  "Returns string type for a message object of type 'FibGoal"
  "ros_tutorial_topic/FibGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FibGoal>)))
  "Returns md5sum for a message object of type '<FibGoal>"
  "6889063349a00b249bd1661df429d822")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FibGoal)))
  "Returns md5sum for a message object of type 'FibGoal"
  "6889063349a00b249bd1661df429d822")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FibGoal>)))
  "Returns full string definition for message of type '<FibGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%int32 order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FibGoal)))
  "Returns full string definition for message of type 'FibGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%int32 order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FibGoal>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FibGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'FibGoal
    (cl:cons ':order (order msg))
))
