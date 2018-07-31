; Auto-generated. Do not edit!


(cl:in-package messages-srv)


;//! \htmlinclude ShootModeControl-request.msg.html

(cl:defclass <ShootModeControl-request> (roslisp-msg-protocol:ros-message)
  ((c_shoot_cmd
    :reader c_shoot_cmd
    :initarg :c_shoot_cmd
    :type cl:boolean
    :initform cl:nil)
   (fric_wheel_run
    :reader fric_wheel_run
    :initarg :fric_wheel_run
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ShootModeControl-request (<ShootModeControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShootModeControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShootModeControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-srv:<ShootModeControl-request> is deprecated: use messages-srv:ShootModeControl-request instead.")))

(cl:ensure-generic-function 'c_shoot_cmd-val :lambda-list '(m))
(cl:defmethod c_shoot_cmd-val ((m <ShootModeControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-srv:c_shoot_cmd-val is deprecated.  Use messages-srv:c_shoot_cmd instead.")
  (c_shoot_cmd m))

(cl:ensure-generic-function 'fric_wheel_run-val :lambda-list '(m))
(cl:defmethod fric_wheel_run-val ((m <ShootModeControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-srv:fric_wheel_run-val is deprecated.  Use messages-srv:fric_wheel_run instead.")
  (fric_wheel_run m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShootModeControl-request>) ostream)
  "Serializes a message object of type '<ShootModeControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'c_shoot_cmd) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fric_wheel_run) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShootModeControl-request>) istream)
  "Deserializes a message object of type '<ShootModeControl-request>"
    (cl:setf (cl:slot-value msg 'c_shoot_cmd) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fric_wheel_run) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShootModeControl-request>)))
  "Returns string type for a service object of type '<ShootModeControl-request>"
  "messages/ShootModeControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShootModeControl-request)))
  "Returns string type for a service object of type 'ShootModeControl-request"
  "messages/ShootModeControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShootModeControl-request>)))
  "Returns md5sum for a message object of type '<ShootModeControl-request>"
  "03450b1a1a21c651312ad46d1cfacf66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShootModeControl-request)))
  "Returns md5sum for a message object of type 'ShootModeControl-request"
  "03450b1a1a21c651312ad46d1cfacf66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShootModeControl-request>)))
  "Returns full string definition for message of type '<ShootModeControl-request>"
  (cl:format cl:nil "~%bool c_shoot_cmd~%bool fric_wheel_run~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShootModeControl-request)))
  "Returns full string definition for message of type 'ShootModeControl-request"
  (cl:format cl:nil "~%bool c_shoot_cmd~%bool fric_wheel_run~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShootModeControl-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShootModeControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ShootModeControl-request
    (cl:cons ':c_shoot_cmd (c_shoot_cmd msg))
    (cl:cons ':fric_wheel_run (fric_wheel_run msg))
))
;//! \htmlinclude ShootModeControl-response.msg.html

(cl:defclass <ShootModeControl-response> (roslisp-msg-protocol:ros-message)
  ((received
    :reader received
    :initarg :received
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ShootModeControl-response (<ShootModeControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShootModeControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShootModeControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-srv:<ShootModeControl-response> is deprecated: use messages-srv:ShootModeControl-response instead.")))

(cl:ensure-generic-function 'received-val :lambda-list '(m))
(cl:defmethod received-val ((m <ShootModeControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-srv:received-val is deprecated.  Use messages-srv:received instead.")
  (received m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShootModeControl-response>) ostream)
  "Serializes a message object of type '<ShootModeControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'received) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShootModeControl-response>) istream)
  "Deserializes a message object of type '<ShootModeControl-response>"
    (cl:setf (cl:slot-value msg 'received) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShootModeControl-response>)))
  "Returns string type for a service object of type '<ShootModeControl-response>"
  "messages/ShootModeControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShootModeControl-response)))
  "Returns string type for a service object of type 'ShootModeControl-response"
  "messages/ShootModeControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShootModeControl-response>)))
  "Returns md5sum for a message object of type '<ShootModeControl-response>"
  "03450b1a1a21c651312ad46d1cfacf66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShootModeControl-response)))
  "Returns md5sum for a message object of type 'ShootModeControl-response"
  "03450b1a1a21c651312ad46d1cfacf66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShootModeControl-response>)))
  "Returns full string definition for message of type '<ShootModeControl-response>"
  (cl:format cl:nil "~%bool received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShootModeControl-response)))
  "Returns full string definition for message of type 'ShootModeControl-response"
  (cl:format cl:nil "~%bool received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShootModeControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShootModeControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ShootModeControl-response
    (cl:cons ':received (received msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ShootModeControl)))
  'ShootModeControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ShootModeControl)))
  'ShootModeControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShootModeControl)))
  "Returns string type for a service object of type '<ShootModeControl>"
  "messages/ShootModeControl")