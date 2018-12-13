;; Auto-generated. Do not edit!


(when (boundp 'p4::FindPath)
  (if (not (find-package "P4"))
    (make-package "P4"))
  (shadow 'FindPath (find-package "P4")))
(unless (find-package "P4::FINDPATH")
  (make-package "P4::FINDPATH"))
(unless (find-package "P4::FINDPATHREQUEST")
  (make-package "P4::FINDPATHREQUEST"))
(unless (find-package "P4::FINDPATHRESPONSE")
  (make-package "P4::FINDPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass p4::FindPathRequest
  :super ros::object
  :slots (_start _goal _num_waypoints ))

(defmethod p4::FindPathRequest
  (:init
   (&key
    ((:start __start) (instance geometry_msgs::Point :init))
    ((:goal __goal) (instance geometry_msgs::Point :init))
    ((:num_waypoints __num_waypoints) 0)
    )
   (send-super :init)
   (setq _start __start)
   (setq _goal __goal)
   (setq _num_waypoints (round __num_waypoints))
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:num_waypoints
   (&optional __num_waypoints)
   (if __num_waypoints (setq _num_waypoints __num_waypoints)) _num_waypoints)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _start
    (send _start :serialization-length)
    ;; geometry_msgs/Point _goal
    (send _goal :serialization-length)
    ;; int32 _num_waypoints
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _start
       (send _start :serialize s)
     ;; geometry_msgs/Point _goal
       (send _goal :serialize s)
     ;; int32 _num_waypoints
       (write-long _num_waypoints s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/Point _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; int32 _num_waypoints
     (setq _num_waypoints (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass p4::FindPathResponse
  :super ros::object
  :slots (_path ))

(defmethod p4::FindPathResponse
  (:init
   (&key
    ((:path __path) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _path __path)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass p4::FindPath
  :super ros::object
  :slots ())

(setf (get p4::FindPath :md5sum-) "7a0021ee1a6c7c0d91e54fbc04ac10ec")
(setf (get p4::FindPath :datatype-) "p4/FindPath")
(setf (get p4::FindPath :request) p4::FindPathRequest)
(setf (get p4::FindPath :response) p4::FindPathResponse)

(defmethod p4::FindPathRequest
  (:response () (instance p4::FindPathResponse :init)))

(setf (get p4::FindPathRequest :md5sum-) "7a0021ee1a6c7c0d91e54fbc04ac10ec")
(setf (get p4::FindPathRequest :datatype-) "p4/FindPathRequest")
(setf (get p4::FindPathRequest :definition-)
      "geometry_msgs/Point start
geometry_msgs/Point goal
int32 num_waypoints

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/Point[] path


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get p4::FindPathResponse :md5sum-) "7a0021ee1a6c7c0d91e54fbc04ac10ec")
(setf (get p4::FindPathResponse :datatype-) "p4/FindPathResponse")
(setf (get p4::FindPathResponse :definition-)
      "geometry_msgs/Point start
geometry_msgs/Point goal
int32 num_waypoints

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/Point[] path


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :p4/FindPath "7a0021ee1a6c7c0d91e54fbc04ac10ec")


