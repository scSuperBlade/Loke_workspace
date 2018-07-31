; Auto-generated. Do not edit!


(cl:in-package messages-msg)


;//! \htmlinclude RobotHurtData.msg.html

(cl:defclass <RobotHurtData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (armor_type
    :reader armor_type
    :initarg :armor_type
    :type cl:fixnum
    :initform 0)
   (hurt_type
    :reader hurt_type
    :initarg :hurt_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RobotHurtData (<RobotHurtData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotHurtData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotHurtData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-msg:<RobotHurtData> is deprecated: use messages-msg:RobotHurtData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotHurtData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:header-val is deprecated.  Use messages-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'armor_type-val :lambda-list '(m))
(cl:defmethod armor_type-val ((m <RobotHurtData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:armor_type-val is deprecated.  Use messages-msg:armor_type instead.")
  (armor_type m))

(cl:ensure-generic-function 'hurt_type-val :lambda-list '(m))
(cl:defmethod hurt_type-val ((m <RobotHurtData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:hurt_type-val is deprecated.  Use messages-msg:hurt_type instead.")
  (hurt_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotHurtData>) ostream)
  "Serializes a message object of type '<RobotHurtData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'armor_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hurt_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotHurtData>) istream)
  "Deserializes a message object of type '<RobotHurtData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'armor_type) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hurt_type) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotHurtData>)))
  "Returns string type for a message object of type '<RobotHurtData>"
  "messages/RobotHurtData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotHurtData)))
  "Returns string type for a message object of type 'RobotHurtData"
  "messages/RobotHurtData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotHurtData>)))
  "Returns md5sum for a message object of type '<RobotHurtData>"
  "802a8244ba552af5959fc38d50ee9b26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotHurtData)))
  "Returns md5sum for a message object of type 'RobotHurtData"
  "802a8244ba552af5959fc38d50ee9b26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotHurtData>)))
  "Returns full string definition for message of type '<RobotHurtData>"
  (cl:format cl:nil "Header header~%int16 armor_type~%int16 hurt_type~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotHurtData)))
  "Returns full string definition for message of type 'RobotHurtData"
  (cl:format cl:nil "Header header~%int16 armor_type~%int16 hurt_type~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotHurtData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotHurtData>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotHurtData
    (cl:cons ':header (header msg))
    (cl:cons ':armor_type (armor_type msg))
    (cl:cons ':hurt_type (hurt_type msg))
))
