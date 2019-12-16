; Auto-generated. Do not edit!


(cl:in-package ros_tutorial_topic-srv)


;//! \htmlinclude SrvTutorial-request.msg.html

(cl:defclass <SrvTutorial-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass SrvTutorial-request (<SrvTutorial-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvTutorial-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvTutorial-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_tutorial_topic-srv:<SrvTutorial-request> is deprecated: use ros_tutorial_topic-srv:SrvTutorial-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <SrvTutorial-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tutorial_topic-srv:a-val is deprecated.  Use ros_tutorial_topic-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <SrvTutorial-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tutorial_topic-srv:b-val is deprecated.  Use ros_tutorial_topic-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvTutorial-request>) ostream)
  "Serializes a message object of type '<SrvTutorial-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvTutorial-request>) istream)
  "Deserializes a message object of type '<SrvTutorial-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvTutorial-request>)))
  "Returns string type for a service object of type '<SrvTutorial-request>"
  "ros_tutorial_topic/SrvTutorialRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvTutorial-request)))
  "Returns string type for a service object of type 'SrvTutorial-request"
  "ros_tutorial_topic/SrvTutorialRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvTutorial-request>)))
  "Returns md5sum for a message object of type '<SrvTutorial-request>"
  "a7d7d7065d45755acef7d4dcf908162a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvTutorial-request)))
  "Returns md5sum for a message object of type 'SrvTutorial-request"
  "a7d7d7065d45755acef7d4dcf908162a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvTutorial-request>)))
  "Returns full string definition for message of type '<SrvTutorial-request>"
  (cl:format cl:nil "int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvTutorial-request)))
  "Returns full string definition for message of type 'SrvTutorial-request"
  (cl:format cl:nil "int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvTutorial-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvTutorial-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvTutorial-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude SrvTutorial-response.msg.html

(cl:defclass <SrvTutorial-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SrvTutorial-response (<SrvTutorial-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvTutorial-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvTutorial-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_tutorial_topic-srv:<SrvTutorial-response> is deprecated: use ros_tutorial_topic-srv:SrvTutorial-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SrvTutorial-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tutorial_topic-srv:result-val is deprecated.  Use ros_tutorial_topic-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvTutorial-response>) ostream)
  "Serializes a message object of type '<SrvTutorial-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvTutorial-response>) istream)
  "Deserializes a message object of type '<SrvTutorial-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvTutorial-response>)))
  "Returns string type for a service object of type '<SrvTutorial-response>"
  "ros_tutorial_topic/SrvTutorialResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvTutorial-response)))
  "Returns string type for a service object of type 'SrvTutorial-response"
  "ros_tutorial_topic/SrvTutorialResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvTutorial-response>)))
  "Returns md5sum for a message object of type '<SrvTutorial-response>"
  "a7d7d7065d45755acef7d4dcf908162a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvTutorial-response)))
  "Returns md5sum for a message object of type 'SrvTutorial-response"
  "a7d7d7065d45755acef7d4dcf908162a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvTutorial-response>)))
  "Returns full string definition for message of type '<SrvTutorial-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvTutorial-response)))
  "Returns full string definition for message of type 'SrvTutorial-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvTutorial-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvTutorial-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvTutorial-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SrvTutorial)))
  'SrvTutorial-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SrvTutorial)))
  'SrvTutorial-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvTutorial)))
  "Returns string type for a service object of type '<SrvTutorial>"
  "ros_tutorial_topic/SrvTutorial")