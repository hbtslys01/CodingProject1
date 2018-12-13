
(cl:in-package :asdf)

(defsystem "p1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Draw" :depends-on ("_package_Draw"))
    (:file "_package_Draw" :depends-on ("_package"))
  ))