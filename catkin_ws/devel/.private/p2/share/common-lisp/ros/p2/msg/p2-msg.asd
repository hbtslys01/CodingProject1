
(cl:in-package :asdf)

(defsystem "p2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Ackermann" :depends-on ("_package_Ackermann"))
    (:file "_package_Ackermann" :depends-on ("_package"))
    (:file "Differential" :depends-on ("_package_Differential"))
    (:file "_package_Differential" :depends-on ("_package"))
  ))