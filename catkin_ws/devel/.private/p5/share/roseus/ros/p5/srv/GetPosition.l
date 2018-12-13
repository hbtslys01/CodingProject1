;; Auto-generated. Do not edit!


(when (boundp 'p5::GetPosition)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'GetPosition (find-package "P5")))
(unless (find-package "P5::GETPOSITION")
  (make-package "P5::GETPOSITION"))
(unless (find-package "P5::GETPOSITIONREQUEST")
  (make-package "P5::GETPOSITIONREQUEST"))
(unless (find-package "P5::GETPOSITIONRESPONSE")
  (make-package "P5::GETPOSITIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass p5::GetPositionRequest
  :super ros::object
  :slots (_block_id ))

(defmethod p5::GetPositionRequest
  (:init
   (&key
    ((:block_id __block_id) 0)
    )
   (send-super :init)
   (setq _block_id (round __block_id))
   self)
  (:block_id
   (&optional __block_id)
   (if __block_id (setq _block_id __block_id)) _block_id)
  (:serialization-length
   ()
   (+
    ;; int8 _block_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _block_id
       (write-byte _block_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _block_id
     (setq _block_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _block_id 127) (setq _block_id (- _block_id 256)))
   ;;
   self)
  )

(defclass p5::GetPositionResponse
  :super ros::object
  :slots (_loc ))

(defmethod p5::GetPositionResponse
  (:init
   (&key
    ((:loc __loc) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _loc __loc)
   self)
  (:loc
   (&rest __loc)
   (if (keywordp (car __loc))
       (send* _loc __loc)
     (progn
       (if __loc (setq _loc (car __loc)))
       _loc)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _loc
    (send _loc :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _loc
       (send _loc :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _loc
     (send _loc :deserialize buf ptr-) (incf ptr- (send _loc :serialization-length))
   ;;
   self)
  )

(defclass p5::GetPosition
  :super ros::object
  :slots ())

(setf (get p5::GetPosition :md5sum-) "0825ed03ec91bc18995b0b869f5989a9")
(setf (get p5::GetPosition :datatype-) "p5/GetPosition")
(setf (get p5::GetPosition :request) p5::GetPositionRequest)
(setf (get p5::GetPosition :response) p5::GetPositionResponse)

(defmethod p5::GetPositionRequest
  (:response () (instance p5::GetPositionResponse :init)))

(setf (get p5::GetPositionRequest :md5sum-) "0825ed03ec91bc18995b0b869f5989a9")
(setf (get p5::GetPositionRequest :datatype-) "p5/GetPositionRequest")
(setf (get p5::GetPositionRequest :definition-)
      "int8 block_id
---
geometry_msgs/Point loc


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get p5::GetPositionResponse :md5sum-) "0825ed03ec91bc18995b0b869f5989a9")
(setf (get p5::GetPositionResponse :datatype-) "p5/GetPositionResponse")
(setf (get p5::GetPositionResponse :definition-)
      "int8 block_id
---
geometry_msgs/Point loc


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :p5/GetPosition "0825ed03ec91bc18995b0b869f5989a9")


