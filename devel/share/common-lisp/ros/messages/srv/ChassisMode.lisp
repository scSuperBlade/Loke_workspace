; Auto-generated. Do not edit!


(cl:in-package messages-srv)


;//! \htmlinclude ChassisMode-request.msg.html

(cl:defclass <ChassisMode-request> (roslisp-msg-protocol:ros-message)
  ((chassis_mode
    :reader chassis_mode
    :initarg :chassis_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ChassisMode-request (<ChassisMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-srv:<ChassisMode-request> is deprecated: use messages-srv:ChassisMode-request instead.")))

(cl:ensure-generic-function 'chassis_mode-val :lambda-list '(m))
(cl:defmethod chassis_mode-val ((m <ChassisMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-srv:chassis_mode-val is deprecated.  Use messages-srv:chassis_mode instead.")
  (chassis_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisMode-request>) ostream)
  "Serializes a message object of type '<ChassisMode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chassis_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisMode-request>) istream)
  "Deserializes a message object of type '<ChassisMode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chassis_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisMode-request>)))
  "Returns string type for a service object of type '<ChassisMode-request>"
  "messages/ChassisModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisMode-request)))
  "Returns string type for a service object of type 'ChassisMode-request"
  "messages/ChassisModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisMode-request>)))
  "Returns md5sum for a message object of type '<ChassisMode-request>"
  "40a1e51b6bb5a70a607d07454b9fd407")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisMode-request)))
  "Returns md5sum for a message object of type 'ChassisMode-request"
  "40a1e51b6bb5a70a607d07454b9fd407")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisMode-request>)))
  "Returns full string definition for message of type '<ChassisMode-request>"
  (cl:format cl:nil "uint8 chassis_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisMode-request)))
  "Returns full string definition for message of type 'ChassisMode-request"
  (cl:format cl:nil "uint8 chassis_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisMode-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisMode-request
    (cl:cons ':chassis_mode (chassis_mode msg))
))
;//! \htmlinclude ChassisMode-response.msg.html

(cl:defclass <ChassisMode-response> (roslisp-msg-protocol:ros-message)
  ((received
    :reader received
    :initarg :received
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChassisMode-response (<ChassisMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-srv:<ChassisMode-response> is deprecated: use messages-srv:ChassisMode-response instead.")))

(cl:ensure-generic-function 'received-val :lambda-list '(m))
(cl:defmethod received-val ((m <ChassisMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-srv:received-val is deprecated.  Use messages-srv:received instead.")
  (received m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisMode-response>) ostream)
  "Serializes a message object of type '<ChassisMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'received) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisMode-response>) istream)
  "Deserializes a message object of type '<ChassisMode-response>"
    (cl:setf (cl:slot-value msg 'received) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisMode-response>)))
  "Returns string type for a service object of type '<ChassisMode-response>"
  "messages/ChassisModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisMode-response)))
  "Returns string type for a service object of type 'ChassisMode-response"
  "messages/ChassisModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisMode-response>)))
  "Returns md5sum for a message object of type '<ChassisMode-response>"
  "40a1e51b6bb5a70a607d07454b9fd407")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisMode-response)))
  "Returns md5sum for a message object of type 'ChassisMode-response"
  "40a1e51b6bb5a70a607d07454b9fd407")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisMode-response>)))
  "Returns full string definition for message of type '<ChassisMode-response>"
  (cl:format cl:nil "bool received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisMode-response)))
  "Returns full string definition for message of type 'ChassisMode-response"
  (cl:format cl:nil "bool received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisMode-response
    (cl:cons ':received (received msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChassisMode)))
  'ChassisMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChassisMode)))
  'ChassisMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisMode)))
  "Returns string type for a service object of type '<ChassisMode>"
  "messages/ChassisMode")