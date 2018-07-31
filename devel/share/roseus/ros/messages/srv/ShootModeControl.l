;; Auto-generated. Do not edit!


(when (boundp 'messages::ShootModeControl)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'ShootModeControl (find-package "MESSAGES")))
(unless (find-package "MESSAGES::SHOOTMODECONTROL")
  (make-package "MESSAGES::SHOOTMODECONTROL"))
(unless (find-package "MESSAGES::SHOOTMODECONTROLREQUEST")
  (make-package "MESSAGES::SHOOTMODECONTROLREQUEST"))
(unless (find-package "MESSAGES::SHOOTMODECONTROLRESPONSE")
  (make-package "MESSAGES::SHOOTMODECONTROLRESPONSE"))

(in-package "ROS")





(defclass messages::ShootModeControlRequest
  :super ros::object
  :slots (_c_shoot_cmd _fric_wheel_run ))

(defmethod messages::ShootModeControlRequest
  (:init
   (&key
    ((:c_shoot_cmd __c_shoot_cmd) nil)
    ((:fric_wheel_run __fric_wheel_run) nil)
    )
   (send-super :init)
   (setq _c_shoot_cmd __c_shoot_cmd)
   (setq _fric_wheel_run __fric_wheel_run)
   self)
  (:c_shoot_cmd
   (&optional __c_shoot_cmd)
   (if __c_shoot_cmd (setq _c_shoot_cmd __c_shoot_cmd)) _c_shoot_cmd)
  (:fric_wheel_run
   (&optional __fric_wheel_run)
   (if __fric_wheel_run (setq _fric_wheel_run __fric_wheel_run)) _fric_wheel_run)
  (:serialization-length
   ()
   (+
    ;; bool _c_shoot_cmd
    1
    ;; bool _fric_wheel_run
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _c_shoot_cmd
       (if _c_shoot_cmd (write-byte -1 s) (write-byte 0 s))
     ;; bool _fric_wheel_run
       (if _fric_wheel_run (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _c_shoot_cmd
     (setq _c_shoot_cmd (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fric_wheel_run
     (setq _fric_wheel_run (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass messages::ShootModeControlResponse
  :super ros::object
  :slots (_received ))

(defmethod messages::ShootModeControlResponse
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

(defclass messages::ShootModeControl
  :super ros::object
  :slots ())

(setf (get messages::ShootModeControl :md5sum-) "03450b1a1a21c651312ad46d1cfacf66")
(setf (get messages::ShootModeControl :datatype-) "messages/ShootModeControl")
(setf (get messages::ShootModeControl :request) messages::ShootModeControlRequest)
(setf (get messages::ShootModeControl :response) messages::ShootModeControlResponse)

(defmethod messages::ShootModeControlRequest
  (:response () (instance messages::ShootModeControlResponse :init)))

(setf (get messages::ShootModeControlRequest :md5sum-) "03450b1a1a21c651312ad46d1cfacf66")
(setf (get messages::ShootModeControlRequest :datatype-) "messages/ShootModeControlRequest")
(setf (get messages::ShootModeControlRequest :definition-)
      "
bool c_shoot_cmd
bool fric_wheel_run

---

bool received
")

(setf (get messages::ShootModeControlResponse :md5sum-) "03450b1a1a21c651312ad46d1cfacf66")
(setf (get messages::ShootModeControlResponse :datatype-) "messages/ShootModeControlResponse")
(setf (get messages::ShootModeControlResponse :definition-)
      "
bool c_shoot_cmd
bool fric_wheel_run

---

bool received
")



(provide :messages/ShootModeControl "03450b1a1a21c651312ad46d1cfacf66")


