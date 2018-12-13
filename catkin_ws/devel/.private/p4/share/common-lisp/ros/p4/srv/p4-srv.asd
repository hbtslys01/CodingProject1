
(cl:in-package :asdf)

(defsystem "p4-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ClosestPointPath" :depends-on ("_package_ClosestPointPath"))
    (:file "_package_ClosestPointPath" :depends-on ("_package"))
    (:file "ComputeCost" :depends-on ("_package_ComputeCost"))
    (:file "_package_ComputeCost" :depends-on ("_package"))
    (:file "FindPath" :depends-on ("_package_FindPath"))
    (:file "_package_FindPath" :depends-on ("_package"))
    (:file "FollowPath" :depends-on ("_package_FollowPath"))
    (:file "_package_FollowPath" :depends-on ("_package"))
    (:file "GetPosition" :depends-on ("_package_GetPosition"))
    (:file "_package_GetPosition" :depends-on ("_package"))
    (:file "InterpolatePath" :depends-on ("_package_InterpolatePath"))
    (:file "_package_InterpolatePath" :depends-on ("_package"))
    (:file "PositionBucket" :depends-on ("_package_PositionBucket"))
    (:file "_package_PositionBucket" :depends-on ("_package"))
    (:file "ReachPos" :depends-on ("_package_ReachPos"))
    (:file "_package_ReachPos" :depends-on ("_package"))
    (:file "SetPosition" :depends-on ("_package_SetPosition"))
    (:file "_package_SetPosition" :depends-on ("_package"))
  ))