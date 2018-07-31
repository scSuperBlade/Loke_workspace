;; Auto-generated. Do not edit!


(when (boundp 'messages::SelfCheck)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'SelfCheck (find-package "MESSAGES")))
(unless (find-package "MESSAGES::SELFCHECK")
  (make-package "MESSAGES::SELFCHECK"))
(unless (find-package "MESSAGES::SELFCHECKREQUEST")
  (make-package "MESSAGES::SELFCHECKREQUEST"))
(unless (find-package "MESSAGES::SELFCHECKRESPONSE")
  (make-package "MESSAGES::SELFCHECKRESPONSE"))

(in-package "ROS")





(defclass messages::SelfCheckRequest
  :super ros::object
  :slots (_self_check ))

(defmethod messages::SelfCheckRequest
  (:init
   (&key
    ((:self_check __self_check) nil)
    )
   (send-super :init)
   (setq _self_check __self_check)
   self)
  (:self_check
   (&optional __self_check)
   (if __self_check (setq _self_check __self_check)) _self_check)
  (:serialization-length
   ()
   (+
    ;; bool _self_check
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _self_check
       (if _self_check (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _self_check
     (setq _self_check (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass messages::SelfCheckResponse
  :super ros::object
  :slots (_passed ))

(defmethod messages::SelfCheckResponse
  (:init
   (&key
    ((:passed __passed) nil)
    )
   (send-super :init)
   (setq _passed __passed)
   self)
  (:passed
   (&optional __passed)
   (if __passed (setq _passed __passed)) _passed)
  (:serialization-length
   ()
   (+
    ;; bool _passed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _passed
       (if _passed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _passed
     (setq _passed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass messages::SelfCheck
  :super ros::object
  :slots ())

(setf (get messages::SelfCheck :md5sum-) "5c04cbf50c5ba1fa89ec40383208e121")
(setf (get messages::SelfCheck :datatype-) "messages/SelfCheck")
(setf (get messages::SelfCheck :request) messages::SelfCheckRequest)
(setf (get messages::SelfCheck :response) messages::SelfCheckResponse)

(defmethod messages::SelfCheckRequest
  (:response () (instance messages::SelfCheckResponse :init)))

(setf (get messages::SelfCheckRequest :md5sum-) "5c04cbf50c5ba1fa89ec40383208e121")
(setf (get messages::SelfCheckRequest :datatype-) "messages/SelfCheckRequest")
(setf (get messages::SelfCheckRequest :definition-)
      "bool self_check
---
bool passed
")

(setf (get messages::SelfCheckResponse :md5sum-) "5c04cbf50c5ba1fa89ec40383208e121")
(setf (get messages::SelfCheckResponse :datatype-) "messages/SelfCheckResponse")
(setf (get messages::SelfCheckResponse :definition-)
      "bool self_check
---
bool passed
")



(provide :messages/SelfCheck "5c04cbf50c5ba1fa89ec40383208e121")


