
(cl:in-package :asdf)

(defsystem "cvCamera-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "cameraTip" :depends-on ("_package_cameraTip"))
    (:file "_package_cameraTip" :depends-on ("_package"))
  ))