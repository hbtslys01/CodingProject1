;; Auto-generated. Do not edit!


(when (boundp 'p5::Action)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'Action (find-package "P5")))
(unless (find-package "P5::ACTION")
  (make-package "P5::ACTION"))

(in-package "ROS")
;;//! \htmlinclude Action.msg.html


(intern "*STOP*" (find-package "P5::ACTION"))
(shadow '*STOP* (find-package "P5::ACTION"))
(defconstant p5::Action::*STOP* -1)
(intern "*SENSE*" (find-package "P5::ACTION"))
(shadow '*SENSE* (find-package "P5::ACTION"))
(defconstant p5::Action::*SENSE* 0)
(intern "*MOVE1*" (find-package "P5::ACTION"))
(shadow '*MOVE1* (find-package "P5::ACTION"))
(defconstant p5::Action::*MOVE1* 1)
(intern "*MOVE2*" (find-package "P5::ACTION"))
(shadow '*MOVE2* (find-package "P5::ACTION"))
(defconstant p5::Action::*MOVE2* 2)
(intern "*MOVE3*" (find-package "P5::ACTION"))
(shadow '*MOVE3* (find-package "P5::ACTION"))
(defconstant p5::Action::*MOVE3* 3)
(intern "*MOVE4*" (find-package "P5::ACTION"))
(shadow '*MOVE4* (find-package "P5::ACTION"))
(defconstant p5::Action::*MOVE4* 4)
(intern "*MOVE5*" (find-package "P5::ACTION"))
(shadow '*MOVE5* (find-package "P5::ACTION"))
(defconstant p5::Action::*MOVE5* 5)
(defclass p5::Action
  :super ros::object
  :slots (_name ))

(defmethod p5::Action
  (:init
   (&key
    ((:name __name) 0)
    )
   (send-super :init)
   (setq _name (round __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; int8 _name
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _name
       (write-byte _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _name
     (setq _name (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _name 127) (setq _name (- _name 256)))
   ;;
   self)
  )

(setf (get p5::Action :md5sum-) "646567fa9f85aed8d6dd55ca92daef16")
(setf (get p5::Action :datatype-) "p5/Action")
(setf (get p5::Action :definition-)
      "int8 STOP = -1
int8 SENSE = 0
int8 MOVE1 = 1
int8 MOVE2 = 2
int8 MOVE3 = 3
int8 MOVE4 = 4
int8 MOVE5 = 5

int8 name

")



(provide :p5/Action "646567fa9f85aed8d6dd55ca92daef16")


