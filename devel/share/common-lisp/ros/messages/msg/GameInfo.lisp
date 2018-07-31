; Auto-generated. Do not edit!


(cl:in-package messages-msg)


;//! \htmlinclude GameInfo.msg.html

(cl:defclass <GameInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (remain_time
    :reader remain_time
    :initarg :remain_time
    :type cl:fixnum
    :initform 0)
   (game_process
    :reader game_process
    :initarg :game_process
    :type cl:fixnum
    :initform 0)
   (remain_hp
    :reader remain_hp
    :initarg :remain_hp
    :type cl:fixnum
    :initform 0)
   (max_hp
    :reader max_hp
    :initarg :max_hp
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GameInfo (<GameInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GameInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GameInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-msg:<GameInfo> is deprecated: use messages-msg:GameInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GameInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:header-val is deprecated.  Use messages-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'remain_time-val :lambda-list '(m))
(cl:defmethod remain_time-val ((m <GameInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:remain_time-val is deprecated.  Use messages-msg:remain_time instead.")
  (remain_time m))

(cl:ensure-generic-function 'game_process-val :lambda-list '(m))
(cl:defmethod game_process-val ((m <GameInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:game_process-val is deprecated.  Use messages-msg:game_process instead.")
  (game_process m))

(cl:ensure-generic-function 'remain_hp-val :lambda-list '(m))
(cl:defmethod remain_hp-val ((m <GameInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:remain_hp-val is deprecated.  Use messages-msg:remain_hp instead.")
  (remain_hp m))

(cl:ensure-generic-function 'max_hp-val :lambda-list '(m))
(cl:defmethod max_hp-val ((m <GameInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:max_hp-val is deprecated.  Use messages-msg:max_hp instead.")
  (max_hp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GameInfo>) ostream)
  "Serializes a message object of type '<GameInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'remain_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'game_process)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'remain_hp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'max_hp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GameInfo>) istream)
  "Deserializes a message object of type '<GameInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remain_time) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'game_process) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remain_hp) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_hp) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GameInfo>)))
  "Returns string type for a message object of type '<GameInfo>"
  "messages/GameInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GameInfo)))
  "Returns string type for a message object of type 'GameInfo"
  "messages/GameInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GameInfo>)))
  "Returns md5sum for a message object of type '<GameInfo>"
  "f22667905a2c8ef96aa7371a952446a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GameInfo)))
  "Returns md5sum for a message object of type 'GameInfo"
  "f22667905a2c8ef96aa7371a952446a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GameInfo>)))
  "Returns full string definition for message of type '<GameInfo>"
  (cl:format cl:nil "Header header~%int16 remain_time~%~%#current race stage~%#  0 not start~%#  1 preparation stage~%#  2 self-check stage~%#  3 5 seconds count down~%#  4 fighting stage~%#  5 result computing stage */~%int16 game_process~%~%int16 remain_hp~%int16 max_hp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GameInfo)))
  "Returns full string definition for message of type 'GameInfo"
  (cl:format cl:nil "Header header~%int16 remain_time~%~%#current race stage~%#  0 not start~%#  1 preparation stage~%#  2 self-check stage~%#  3 5 seconds count down~%#  4 fighting stage~%#  5 result computing stage */~%int16 game_process~%~%int16 remain_hp~%int16 max_hp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GameInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GameInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'GameInfo
    (cl:cons ':header (header msg))
    (cl:cons ':remain_time (remain_time msg))
    (cl:cons ':game_process (game_process msg))
    (cl:cons ':remain_hp (remain_hp msg))
    (cl:cons ':max_hp (max_hp msg))
))
