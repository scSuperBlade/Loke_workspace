;; Auto-generated. Do not edit!


(when (boundp 'messages::ShootState)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'ShootState (find-package "MESSAGES")))
(unless (find-package "MESSAGES::SHOOTSTATE")
  (make-package "MESSAGES::SHOOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ShootState.msg.html


(defclass messages::ShootState
  :super ros::object
  :slots (_single_shoot _continue_shoot _run_friction_whell _friction_whell_speed ))

(defmethod messages::ShootState
  (:init
   (&key
    ((:single_shoot __single_shoot) 0)
    ((:continue_shoot __continue_shoot) 0)
    ((:run_friction_whell __run_friction_whell) 0)
    ((:friction_whell_speed __friction_whell_speed) 0)
    )
   (send-super :init)
   (setq _single_shoot (round __single_shoot))
   (setq _continue_shoot (round __continue_shoot))
   (setq _run_friction_whell (round __run_friction_whell))
   (setq _friction_whell_speed (round __friction_whell_speed))
   self)
  (:single_shoot
   (&optional __single_shoot)
   (if __single_shoot (setq _single_shoot __single_shoot)) _single_shoot)
  (:continue_shoot
   (&optional __continue_shoot)
   (if __continue_shoot (setq _continue_shoot __continue_shoot)) _continue_shoot)
  (:run_friction_whell
   (&optional __run_friction_whell)
   (if __run_friction_whell (setq _run_friction_whell __run_friction_whell)) _run_friction_whell)
  (:friction_whell_speed
   (&optional __friction_whell_speed)
   (if __friction_whell_speed (setq _friction_whell_speed __friction_whell_speed)) _friction_whell_speed)
  (:serialization-length
   ()
   (+
    ;; int32 _single_shoot
    4
    ;; int32 _continue_shoot
    4
    ;; int32 _run_friction_whell
    4
    ;; int32 _friction_whell_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _single_shoot
       (write-long _single_shoot s)
     ;; int32 _continue_shoot
       (write-long _continue_shoot s)
     ;; int32 _run_friction_whell
       (write-long _run_friction_whell s)
     ;; int32 _friction_whell_speed
       (write-long _friction_whell_speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _single_shoot
     (setq _single_shoot (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _continue_shoot
     (setq _continue_shoot (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _run_friction_whell
     (setq _run_friction_whell (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _friction_whell_speed
     (setq _friction_whell_speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get messages::ShootState :md5sum-) "36f858c917904d9229bf553ee5e21890")
(setf (get messages::ShootState :datatype-) "messages/ShootState")
(setf (get messages::ShootState :definition-)
      "int32 single_shoot
int32 continue_shoot
int32 run_friction_whell
int32 friction_whell_speed
")



(provide :messages/ShootState "36f858c917904d9229bf553ee5e21890")


