;; Auto-generated. Do not edit!


(when (boundp 'p3::JointAngles)
  (if (not (find-package "P3"))
    (make-package "P3"))
  (shadow 'JointAngles (find-package "P3")))
(unless (find-package "P3::JOINTANGLES")
  (make-package "P3::JOINTANGLES"))

(in-package "ROS")
;;//! \htmlinclude JointAngles.msg.html


(defclass p3::JointAngles
  :super ros::object
  :slots (_angles ))

(defmethod p3::JointAngles
  (:init
   (&key
    ((:angles __angles) (make-array 5 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _angles __angles)
   self)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:serialization-length
   ()
   (+
    ;; float64[5] _angles
    (* 8    5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[5] _angles
     (dotimes (i 5)
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[5] _angles
   (dotimes (i (length _angles))
     (setf (elt _angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get p3::JointAngles :md5sum-) "266f4497ea1dcf85e7f9989383bff1ae")
(setf (get p3::JointAngles :datatype-) "p3/JointAngles")
(setf (get p3::JointAngles :definition-)
      "float64[5] angles

")



(provide :p3/JointAngles "266f4497ea1dcf85e7f9989383bff1ae")


