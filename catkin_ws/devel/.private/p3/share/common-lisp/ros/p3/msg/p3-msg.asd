
(cl:in-package :asdf)

(defsystem "p3-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "JointAngles" :depends-on ("_package_JointAngles"))
    (:file "_package_JointAngles" :depends-on ("_package"))
    (:file "PointArray" :depends-on ("_package_PointArray"))
    (:file "_package_PointArray" :depends-on ("_package"))
  ))