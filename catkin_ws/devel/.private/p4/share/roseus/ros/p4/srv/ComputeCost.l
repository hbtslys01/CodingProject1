;; Auto-generated. Do not edit!


(when (boundp 'p4::ComputeCost)
  (if (not (find-package "P4"))
    (make-package "P4"))
  (shadow 'ComputeCost (find-package "P4")))
(unless (find-package "P4::COMPUTECOST")
  (make-package "P4::COMPUTECOST"))
(unless (find-package "P4::COMPUTECOSTREQUEST")
  (make-package "P4::COMPUTECOSTREQUEST"))
(unless (find-package "P4::COMPUTECOSTRESPONSE")
  (make-package "P4::COMPUTECOSTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass p4::ComputeCostRequest
  :super ros::object
  :slots (_waypoints ))

(defmethod p4::ComputeCostRequest
  (:init
   (&key
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _waypoints __waypoints)
   self)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass p4::ComputeCostResponse
  :super ros::object
  :slots (_cost ))

(defmethod p4::ComputeCostResponse
  (:init
   (&key
    ((:cost __cost) 0.0)
    )
   (send-super :init)
   (setq _cost (float __cost))
   self)
  (:cost
   (&optional __cost)
   (if __cost (setq _cost __cost)) _cost)
  (:serialization-length
   ()
   (+
    ;; float64 _cost
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _cost
       (sys::poke _cost (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _cost
     (setq _cost (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass p4::ComputeCost
  :super ros::object
  :slots ())

(setf (get p4::ComputeCost :md5sum-) "e8778a61652581d27a3ff06e39854dc1")
(setf (get p4::ComputeCost :datatype-) "p4/ComputeCost")
(setf (get p4::ComputeCost :request) p4::ComputeCostRequest)
(setf (get p4::ComputeCost :response) p4::ComputeCostResponse)

(defmethod p4::ComputeCostRequest
  (:response () (instance p4::ComputeCostResponse :init)))

(setf (get p4::ComputeCostRequest :md5sum-) "e8778a61652581d27a3ff06e39854dc1")
(setf (get p4::ComputeCostRequest :datatype-) "p4/ComputeCostRequest")
(setf (get p4::ComputeCostRequest :definition-)
      "geometry_msgs/Point[] waypoints

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float64 cost

")

(setf (get p4::ComputeCostResponse :md5sum-) "e8778a61652581d27a3ff06e39854dc1")
(setf (get p4::ComputeCostResponse :datatype-) "p4/ComputeCostResponse")
(setf (get p4::ComputeCostResponse :definition-)
      "geometry_msgs/Point[] waypoints

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float64 cost

")



(provide :p4/ComputeCost "e8778a61652581d27a3ff06e39854dc1")


