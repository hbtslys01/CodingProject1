
(cl:in-package :asdf)

(defsystem "p5-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Action" :depends-on ("_package_Action"))
    (:file "_package_Action" :depends-on ("_package"))
    (:file "ActionEffect" :depends-on ("_package_ActionEffect"))
    (:file "_package_ActionEffect" :depends-on ("_package"))
    (:file "ActionOption" :depends-on ("_package_ActionOption"))
    (:file "_package_ActionOption" :depends-on ("_package"))
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
  ))