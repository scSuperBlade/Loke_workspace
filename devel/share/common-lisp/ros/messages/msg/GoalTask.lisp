; Auto-generated. Do not edit!


(cl:in-package messages-msg)


;//! \htmlinclude GoalTask.msg.html

(cl:defclass <GoalTask> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (arrive
    :reader arrive
    :initarg :arrive
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GoalTask (<GoalTask>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalTask>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalTask)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-msg:<GoalTask> is deprecated: use messages-msg:GoalTask instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GoalTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:goal-val is deprecated.  Use messages-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'arrive-val :lambda-list '(m))
(cl:defmethod arrive-val ((m <GoalTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:arrive-val is deprecated.  Use messages-msg:arrive instead.")
  (arrive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalTask>) ostream)
  "Serializes a message object of type '<GoalTask>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'arrive) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalTask>) istream)
  "Deserializes a message object of type '<GoalTask>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:setf (cl:slot-value msg 'arrive) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalTask>)))
  "Returns string type for a message object of type '<GoalTask>"
  "messages/GoalTask")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalTask)))
  "Returns string type for a message object of type 'GoalTask"
  "messages/GoalTask")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalTask>)))
  "Returns md5sum for a message object of type '<GoalTask>"
  "b129650f30bb94defb4a6c985ec83b28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalTask)))
  "Returns md5sum for a message object of type 'GoalTask"
  "b129650f30bb94defb4a6c985ec83b28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalTask>)))
  "Returns full string definition for message of type '<GoalTask>"
  (cl:format cl:nil "geometry_msgs/PoseStamped goal~%bool arrive~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalTask)))
  "Returns full string definition for message of type 'GoalTask"
  (cl:format cl:nil "geometry_msgs/PoseStamped goal~%bool arrive~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalTask>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalTask>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalTask
    (cl:cons ':goal (goal msg))
    (cl:cons ':arrive (arrive msg))
))
