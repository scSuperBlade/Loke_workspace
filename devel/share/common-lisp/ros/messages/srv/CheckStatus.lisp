; Auto-generated. Do not edit!


(cl:in-package messages-srv)


;//! \htmlinclude CheckStatus-request.msg.html

(cl:defclass <CheckStatus-request> (roslisp-msg-protocol:ros-message)
  ((self_check_passed
    :reader self_check_passed
    :initarg :self_check_passed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckStatus-request (<CheckStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-srv:<CheckStatus-request> is deprecated: use messages-srv:CheckStatus-request instead.")))

(cl:ensure-generic-function 'self_check_passed-val :lambda-list '(m))
(cl:defmethod self_check_passed-val ((m <CheckStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-srv:self_check_passed-val is deprecated.  Use messages-srv:self_check_passed instead.")
  (self_check_passed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckStatus-request>) ostream)
  "Serializes a message object of type '<CheckStatus-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'self_check_passed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckStatus-request>) istream)
  "Deserializes a message object of type '<CheckStatus-request>"
    (cl:setf (cl:slot-value msg 'self_check_passed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckStatus-request>)))
  "Returns string type for a service object of type '<CheckStatus-request>"
  "messages/CheckStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckStatus-request)))
  "Returns string type for a service object of type 'CheckStatus-request"
  "messages/CheckStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckStatus-request>)))
  "Returns md5sum for a message object of type '<CheckStatus-request>"
  "66285132674ea3f07185519c874191fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckStatus-request)))
  "Returns md5sum for a message object of type 'CheckStatus-request"
  "66285132674ea3f07185519c874191fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckStatus-request>)))
  "Returns full string definition for message of type '<CheckStatus-request>"
  (cl:format cl:nil "bool self_check_passed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckStatus-request)))
  "Returns full string definition for message of type 'CheckStatus-request"
  (cl:format cl:nil "bool self_check_passed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckStatus-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckStatus-request
    (cl:cons ':self_check_passed (self_check_passed msg))
))
;//! \htmlinclude CheckStatus-response.msg.html

(cl:defclass <CheckStatus-response> (roslisp-msg-protocol:ros-message)
  ((received
    :reader received
    :initarg :received
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckStatus-response (<CheckStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-srv:<CheckStatus-response> is deprecated: use messages-srv:CheckStatus-response instead.")))

(cl:ensure-generic-function 'received-val :lambda-list '(m))
(cl:defmethod received-val ((m <CheckStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-srv:received-val is deprecated.  Use messages-srv:received instead.")
  (received m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckStatus-response>) ostream)
  "Serializes a message object of type '<CheckStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'received) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckStatus-response>) istream)
  "Deserializes a message object of type '<CheckStatus-response>"
    (cl:setf (cl:slot-value msg 'received) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckStatus-response>)))
  "Returns string type for a service object of type '<CheckStatus-response>"
  "messages/CheckStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckStatus-response)))
  "Returns string type for a service object of type 'CheckStatus-response"
  "messages/CheckStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckStatus-response>)))
  "Returns md5sum for a message object of type '<CheckStatus-response>"
  "66285132674ea3f07185519c874191fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckStatus-response)))
  "Returns md5sum for a message object of type 'CheckStatus-response"
  "66285132674ea3f07185519c874191fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckStatus-response>)))
  "Returns full string definition for message of type '<CheckStatus-response>"
  (cl:format cl:nil "bool received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckStatus-response)))
  "Returns full string definition for message of type 'CheckStatus-response"
  (cl:format cl:nil "bool received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckStatus-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckStatus-response
    (cl:cons ':received (received msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckStatus)))
  'CheckStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckStatus)))
  'CheckStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckStatus)))
  "Returns string type for a service object of type '<CheckStatus>"
  "messages/CheckStatus")