
(cl:in-package :asdf)

(defsystem "messages-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ChassisMode" :depends-on ("_package_ChassisMode"))
    (:file "_package_ChassisMode" :depends-on ("_package"))
    (:file "CheckStatus" :depends-on ("_package_CheckStatus"))
    (:file "_package_CheckStatus" :depends-on ("_package"))
    (:file "GameBuffStatus" :depends-on ("_package_GameBuffStatus"))
    (:file "_package_GameBuffStatus" :depends-on ("_package"))
    (:file "GimbalMode" :depends-on ("_package_GimbalMode"))
    (:file "_package_GimbalMode" :depends-on ("_package"))
    (:file "SelfCheck" :depends-on ("_package_SelfCheck"))
    (:file "_package_SelfCheck" :depends-on ("_package"))
    (:file "ShootModeControl" :depends-on ("_package_ShootModeControl"))
    (:file "_package_ShootModeControl" :depends-on ("_package"))
  ))