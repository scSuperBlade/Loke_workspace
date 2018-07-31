; Auto-generated. Do not edit!


(cl:in-package messages-srv)


;//! \htmlinclude SelfCheck-request.msg.html

(cl:defclass <SelfCheck-request> (roslisp-msg-protocol:ros-message)
  ((self_check
    :reader self_check
    :initarg :self_check
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SelfCheck-request (<SelfCheck-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SelfCheck-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SelfCheck-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-srv:<SelfCheck-request> is deprecated: use messages-srv:SelfCheck-request instead.")))

(cl:ensure-generic-function 'self_check-val :lambda-list '(m))
(cl:defmethod self_check-val ((m <SelfCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-srv:self_check-val is deprecated.  Use messages-srv:self_check instead.")
  (self_check m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SelfCheck-request>) ostream)
  "Serializes a message object of type '<SelfCheck-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'self_check) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SelfCheck-request>) istream)
  "Deserializes a message object of type '<SelfCheck-request>"
    (cl:setf (cl:slot-value msg 'self_check) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SelfCheck-request>)))
  "Returns string type for a service object of type '<SelfCheck-request>"
  "messages/SelfCheckRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelfCheck-request)))
  "Returns string type for a service object of type 'SelfCheck-request"
  "messages/SelfCheckRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SelfCheck-request>)))
  "Returns md5sum for a message object of type '<SelfCheck-request>"
  "5c04cbf50c5ba1fa89ec40383208e121")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SelfCheck-request)))
  "Returns md5sum for a message object of type 'SelfCheck-request"
  "5c04cbf50c5ba1fa89ec40383208e121")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SelfCheck-request>)))
  "Returns full string definition for message of type '<SelfCheck-request>"
  (cl:format cl:nil "bool self_check~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SelfCheck-request)))
  "Returns full string definition for message of type 'SelfCheck-request"
  (cl:format cl:nil "bool self_check~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SelfCheck-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SelfCheck-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SelfCheck-request
    (cl:cons ':self_check (self_check msg))
))
;//! \htmlinclude SelfCheck-response.msg.html

(cl:defclass <SelfCheck-response> (roslisp-msg-protocol:ros-message)
  ((passed
    :reader passed
    :initarg :passed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SelfCheck-response (<SelfCheck-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SelfCheck-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SelfCheck-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-srv:<SelfCheck-response> is deprecated: use messages-srv:SelfCheck-response instead.")))

(cl:ensure-generic-function 'passed-val :lambda-list '(m))
(cl:defmethod passed-val ((m <SelfCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-srv:passed-val is deprecated.  Use messages-srv:passed instead.")
  (passed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SelfCheck-response>) ostream)
  "Serializes a message object of type '<SelfCheck-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'passed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SelfCheck-response>) istream)
  "Deserializes a message object of type '<SelfCheck-response>"
    (cl:setf (cl:slot-value msg 'passed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SelfCheck-response>)))
  "Returns string type for a service object of type '<SelfCheck-response>"
  "messages/SelfCheckResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelfCheck-response)))
  "Returns string type for a service object of type 'SelfCheck-response"
  "messages/SelfCheckResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SelfCheck-response>)))
  "Returns md5sum for a message object of type '<SelfCheck-response>"
  "5c04cbf50c5ba1fa89ec40383208e121")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SelfCheck-response)))
  "Returns md5sum for a message object of type 'SelfCheck-response"
  "5c04cbf50c5ba1fa89ec40383208e121")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SelfCheck-response>)))
  "Returns full string definition for message of type '<SelfCheck-response>"
  (cl:format cl:nil "bool passed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SelfCheck-response)))
  "Returns full string definition for message of type 'SelfCheck-response"
  (cl:format cl:nil "bool passed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SelfCheck-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SelfCheck-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SelfCheck-response
    (cl:cons ':passed (passed msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SelfCheck)))
  'SelfCheck-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SelfCheck)))
  'SelfCheck-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelfCheck)))
  "Returns string type for a service object of type '<SelfCheck>"
  "messages/SelfCheck")