;; Auto-generated. Do not edit!


(when (boundp 'messages::CheckStatus)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'CheckStatus (find-package "MESSAGES")))
(unless (find-package "MESSAGES::CHECKSTATUS")
  (make-package "MESSAGES::CHECKSTATUS"))
(unless (find-package "MESSAGES::CHECKSTATUSREQUEST")
  (make-package "MESSAGES::CHECKSTATUSREQUEST"))
(unless (find-package "MESSAGES::CHECKSTATUSRESPONSE")
  (make-package "MESSAGES::CHECKSTATUSRESPONSE"))

(in-package "ROS")





(defclass messages::CheckStatusRequest
  :super ros::object
  :slots (_self_check_passed ))

(defmethod messages::CheckStatusRequest
  (:init
   (&key
    ((:self_check_passed __self_check_passed) nil)
    )
   (send-super :init)
   (setq _self_check_passed __self_check_passed)
   self)
  (:self_check_passed
   (&optional __self_check_passed)
   (if __self_check_passed (setq _self_check_passed __self_check_passed)) _self_check_passed)
  (:serialization-length
   ()
   (+
    ;; bool _self_check_passed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _self_check_passed
       (if _self_check_passed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _self_check_passed
     (setq _self_check_passed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass messages::CheckStatusResponse
  :super ros::object
  :slots (_received ))

(defmethod messages::CheckStatusResponse
  (:init
   (&key
    ((:received __received) nil)
    )
   (send-super :init)
   (setq _received __received)
   self)
  (:received
   (&optional __received)
   (if __received (setq _received __received)) _received)
  (:serialization-length
   ()
   (+
    ;; bool _received
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _received
       (if _received (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _received
     (setq _received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass messages::CheckStatus
  :super ros::object
  :slots ())

(setf (get messages::CheckStatus :md5sum-) "66285132674ea3f07185519c874191fe")
(setf (get messages::CheckStatus :datatype-) "messages/CheckStatus")
(setf (get messages::CheckStatus :request) messages::CheckStatusRequest)
(setf (get messages::CheckStatus :response) messages::CheckStatusResponse)

(defmethod messages::CheckStatusRequest
  (:response () (instance messages::CheckStatusResponse :init)))

(setf (get messages::CheckStatusRequest :md5sum-) "66285132674ea3f07185519c874191fe")
(setf (get messages::CheckStatusRequest :datatype-) "messages/CheckStatusRequest")
(setf (get messages::CheckStatusRequest :definition-)
      "bool self_check_passed
---
bool received
")

(setf (get messages::CheckStatusResponse :md5sum-) "66285132674ea3f07185519c874191fe")
(setf (get messages::CheckStatusResponse :datatype-) "messages/CheckStatusResponse")
(setf (get messages::CheckStatusResponse :definition-)
      "bool self_check_passed
---
bool received
")



(provide :messages/CheckStatus "66285132674ea3f07185519c874191fe")


