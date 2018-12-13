;; Auto-generated. Do not edit!


(when (boundp 'p4::ReachPos)
  (if (not (find-package "P4"))
    (make-package "P4"))
  (shadow 'ReachPos (find-package "P4")))
(unless (find-package "P4::REACHPOS")
  (make-package "P4::REACHPOS"))
(unless (find-package "P4::REACHPOSREQUEST")
  (make-package "P4::REACHPOSREQUEST"))
(unless (find-package "P4::REACHPOSRESPONSE")
  (make-package "P4::REACHPOSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass p4::ReachPosRequest
  :super ros::object
  :slots (_pos ))

(defmethod p4::ReachPosRequest
  (:init
   (&key
    ((:pos __pos) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _pos __pos)
   self)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _pos
    (send _pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _pos
       (send _pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;;
   self)
  )

(defclass p4::ReachPosResponse
  :super ros::object
  :slots (_success ))

(defmethod p4::ReachPosResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass p4::ReachPos
  :super ros::object
  :slots ())

(setf (get p4::ReachPos :md5sum-) "f6223c7abdc4b623d217c01366131467")
(setf (get p4::ReachPos :datatype-) "p4/ReachPos")
(setf (get p4::ReachPos :request) p4::ReachPosRequest)
(setf (get p4::ReachPos :response) p4::ReachPosResponse)

(defmethod p4::ReachPosRequest
  (:response () (instance p4::ReachPosResponse :init)))

(setf (get p4::ReachPosRequest :md5sum-) "f6223c7abdc4b623d217c01366131467")
(setf (get p4::ReachPosRequest :datatype-) "p4/ReachPosRequest")
(setf (get p4::ReachPosRequest :definition-)
      "geometry_msgs/Point pos

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")

(setf (get p4::ReachPosResponse :md5sum-) "f6223c7abdc4b623d217c01366131467")
(setf (get p4::ReachPosResponse :datatype-) "p4/ReachPosResponse")
(setf (get p4::ReachPosResponse :definition-)
      "geometry_msgs/Point pos

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")



(provide :p4/ReachPos "f6223c7abdc4b623d217c01366131467")


