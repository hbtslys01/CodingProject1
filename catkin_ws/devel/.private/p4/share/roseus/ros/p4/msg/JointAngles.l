;; Auto-generated. Do not edit!


(when (boundp 'p4::JointAngles)
  (if (not (find-package "P4"))
    (make-package "P4"))
  (shadow 'JointAngles (find-package "P4")))
(unless (find-package "P4::JOINTANGLES")
  (make-package "P4::JOINTANGLES"))

(in-package "ROS")
;;//! \htmlinclude JointAngles.msg.html


(defclass p4::JointAngles
  :super ros::object
  :slots (_angles ))

(defmethod p4::JointAngles
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

(setf (get p4::JointAngles :md5sum-) "266f4497ea1dcf85e7f9989383bff1ae")
(setf (get p4::JointAngles :datatype-) "p4/JointAngles")
(setf (get p4::JointAngles :definition-)
      "float64[5] angles

")



(provide :p4/JointAngles "266f4497ea1dcf85e7f9989383bff1ae")


