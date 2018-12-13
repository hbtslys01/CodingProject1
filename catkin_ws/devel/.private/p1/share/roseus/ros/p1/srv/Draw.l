;; Auto-generated. Do not edit!


(when (boundp 'p1::Draw)
  (if (not (find-package "P1"))
    (make-package "P1"))
  (shadow 'Draw (find-package "P1")))
(unless (find-package "P1::DRAW")
  (make-package "P1::DRAW"))
(unless (find-package "P1::DRAWREQUEST")
  (make-package "P1::DRAWREQUEST"))
(unless (find-package "P1::DRAWRESPONSE")
  (make-package "P1::DRAWRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass p1::DrawRequest
  :super ros::object
  :slots (_count _rotate ))

(defmethod p1::DrawRequest
  (:init
   (&key
    ((:count __count) 0.0)
    ((:rotate __rotate) nil)
    )
   (send-super :init)
   (setq _count (float __count))
   (setq _rotate __rotate)
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:rotate
   (&optional __rotate)
   (if __rotate (setq _rotate __rotate)) _rotate)
  (:serialization-length
   ()
   (+
    ;; float64 _count
    8
    ;; bool _rotate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _count
       (sys::poke _count (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _rotate
       (if _rotate (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _count
     (setq _count (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _rotate
     (setq _rotate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass p1::DrawResponse
  :super ros::object
  :slots (_vel ))

(defmethod p1::DrawResponse
  (:init
   (&key
    ((:vel __vel) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _vel __vel)
   self)
  (:vel
   (&rest __vel)
   (if (keywordp (car __vel))
       (send* _vel __vel)
     (progn
       (if __vel (setq _vel (car __vel)))
       _vel)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _vel
    (send _vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _vel
       (send _vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;;
   self)
  )

(defclass p1::Draw
  :super ros::object
  :slots ())

(setf (get p1::Draw :md5sum-) "d74afb0d9a5429b7e16cd23054d13ebb")
(setf (get p1::Draw :datatype-) "p1/Draw")
(setf (get p1::Draw :request) p1::DrawRequest)
(setf (get p1::Draw :response) p1::DrawResponse)

(defmethod p1::DrawRequest
  (:response () (instance p1::DrawResponse :init)))

(setf (get p1::DrawRequest :md5sum-) "d74afb0d9a5429b7e16cd23054d13ebb")
(setf (get p1::DrawRequest :datatype-) "p1/DrawRequest")
(setf (get p1::DrawRequest :definition-)
      "float64 count
bool rotate

---

geometry_msgs/Twist vel


================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get p1::DrawResponse :md5sum-) "d74afb0d9a5429b7e16cd23054d13ebb")
(setf (get p1::DrawResponse :datatype-) "p1/DrawResponse")
(setf (get p1::DrawResponse :definition-)
      "float64 count
bool rotate

---

geometry_msgs/Twist vel


================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :p1/Draw "d74afb0d9a5429b7e16cd23054d13ebb")


