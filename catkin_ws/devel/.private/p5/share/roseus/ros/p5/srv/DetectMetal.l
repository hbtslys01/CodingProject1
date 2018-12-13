;; Auto-generated. Do not edit!


(when (boundp 'p5::DetectMetal)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'DetectMetal (find-package "P5")))
(unless (find-package "P5::DETECTMETAL")
  (make-package "P5::DETECTMETAL"))
(unless (find-package "P5::DETECTMETALREQUEST")
  (make-package "P5::DETECTMETALREQUEST"))
(unless (find-package "P5::DETECTMETALRESPONSE")
  (make-package "P5::DETECTMETALRESPONSE"))

(in-package "ROS")





(defclass p5::DetectMetalRequest
  :super ros::object
  :slots (_block_id ))

(defmethod p5::DetectMetalRequest
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

(defclass p5::DetectMetalResponse
  :super ros::object
  :slots (_has_metal _distance ))

(defmethod p5::DetectMetalResponse
  (:init
   (&key
    ((:has_metal __has_metal) nil)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _has_metal __has_metal)
   (setq _distance (float __distance))
   self)
  (:has_metal
   (&optional __has_metal)
   (if __has_metal (setq _has_metal __has_metal)) _has_metal)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; bool _has_metal
    1
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _has_metal
       (if _has_metal (write-byte -1 s) (write-byte 0 s))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _has_metal
     (setq _has_metal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass p5::DetectMetal
  :super ros::object
  :slots ())

(setf (get p5::DetectMetal :md5sum-) "2431cf74dff95a94498ba287cb39d5a3")
(setf (get p5::DetectMetal :datatype-) "p5/DetectMetal")
(setf (get p5::DetectMetal :request) p5::DetectMetalRequest)
(setf (get p5::DetectMetal :response) p5::DetectMetalResponse)

(defmethod p5::DetectMetalRequest
  (:response () (instance p5::DetectMetalResponse :init)))

(setf (get p5::DetectMetalRequest :md5sum-) "2431cf74dff95a94498ba287cb39d5a3")
(setf (get p5::DetectMetalRequest :datatype-) "p5/DetectMetalRequest")
(setf (get p5::DetectMetalRequest :definition-)
      "int8 block_id
---
bool has_metal
float64 distance

")

(setf (get p5::DetectMetalResponse :md5sum-) "2431cf74dff95a94498ba287cb39d5a3")
(setf (get p5::DetectMetalResponse :datatype-) "p5/DetectMetalResponse")
(setf (get p5::DetectMetalResponse :definition-)
      "int8 block_id
---
bool has_metal
float64 distance

")



(provide :p5/DetectMetal "2431cf74dff95a94498ba287cb39d5a3")


