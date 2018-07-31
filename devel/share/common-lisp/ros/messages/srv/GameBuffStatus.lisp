; Auto-generated. Do not edit!


(cl:in-package messages-srv)


;//! \htmlinclude GameBuffStatus-request.msg.html

(cl:defclass <GameBuffStatus-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (buff_info
    :reader buff_info
    :initarg :buff_info
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GameBuffStatus-request (<GameBuffStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GameBuffStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GameBuffStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-srv:<GameBuffStatus-request> is deprecated: use messages-srv:GameBuffStatus-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GameBuffStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-srv:header-val is deprecated.  Use messages-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'buff_info-val :lambda-list '(m))
(cl:defmethod buff_info-val ((m <GameBuffStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-srv:buff_info-val is deprecated.  Use messages-srv:buff_info instead.")
  (buff_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GameBuffStatus-request>) ostream)
  "Serializes a message object of type '<GameBuffStatus-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'buff_info)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GameBuffStatus-request>) istream)
  "Deserializes a message object of type '<GameBuffStatus-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'buff_info) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GameBuffStatus-request>)))
  "Returns string type for a service object of type '<GameBuffStatus-request>"
  "messages/GameBuffStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GameBuffStatus-request)))
  "Returns string type for a service object of type 'GameBuffStatus-request"
  "messages/GameBuffStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GameBuffStatus-request>)))
  "Returns md5sum for a message object of type '<GameBuffStatus-request>"
  "2b948f4403813a06f105f67e07d5a55c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GameBuffStatus-request)))
  "Returns md5sum for a message object of type 'GameBuffStatus-request"
  "2b948f4403813a06f105f67e07d5a55c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GameBuffStatus-request>)))
  "Returns full string definition for message of type '<GameBuffStatus-request>"
  (cl:format cl:nil "Header header~%~%int16 buff_info~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GameBuffStatus-request)))
  "Returns full string definition for message of type 'GameBuffStatus-request"
  (cl:format cl:nil "Header header~%~%int16 buff_info~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GameBuffStatus-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GameBuffStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GameBuffStatus-request
    (cl:cons ':header (header msg))
    (cl:cons ':buff_info (buff_info msg))
))
;//! \htmlinclude GameBuffStatus-response.msg.html

(cl:defclass <GameBuffStatus-response> (roslisp-msg-protocol:ros-message)
  ((received
    :reader received
    :initarg :received
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GameBuffStatus-response (<GameBuffStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GameBuffStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GameBuffStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-srv:<GameBuffStatus-response> is deprecated: use messages-srv:GameBuffStatus-response instead.")))

(cl:ensure-generic-function 'received-val :lambda-list '(m))
(cl:defmethod received-val ((m <GameBuffStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-srv:received-val is deprecated.  Use messages-srv:received instead.")
  (received m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GameBuffStatus-response>) ostream)
  "Serializes a message object of type '<GameBuffStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'received) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GameBuffStatus-response>) istream)
  "Deserializes a message object of type '<GameBuffStatus-response>"
    (cl:setf (cl:slot-value msg 'received) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GameBuffStatus-response>)))
  "Returns string type for a service object of type '<GameBuffStatus-response>"
  "messages/GameBuffStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GameBuffStatus-response)))
  "Returns string type for a service object of type 'GameBuffStatus-response"
  "messages/GameBuffStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GameBuffStatus-response>)))
  "Returns md5sum for a message object of type '<GameBuffStatus-response>"
  "2b948f4403813a06f105f67e07d5a55c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GameBuffStatus-response)))
  "Returns md5sum for a message object of type 'GameBuffStatus-response"
  "2b948f4403813a06f105f67e07d5a55c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GameBuffStatus-response>)))
  "Returns full string definition for message of type '<GameBuffStatus-response>"
  (cl:format cl:nil "~%bool received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GameBuffStatus-response)))
  "Returns full string definition for message of type 'GameBuffStatus-response"
  (cl:format cl:nil "~%bool received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GameBuffStatus-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GameBuffStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GameBuffStatus-response
    (cl:cons ':received (received msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GameBuffStatus)))
  'GameBuffStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GameBuffStatus)))
  'GameBuffStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GameBuffStatus)))
  "Returns string type for a service object of type '<GameBuffStatus>"
  "messages/GameBuffStatus")