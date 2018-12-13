;; Auto-generated. Do not edit!


(when (boundp 'p5::ActionOption)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'ActionOption (find-package "P5")))
(unless (find-package "P5::ACTIONOPTION")
  (make-package "P5::ACTIONOPTION"))

(in-package "ROS")
;;//! \htmlinclude ActionOption.msg.html


(defclass p5::ActionOption
  :super ros::object
  :slots (_action _effects ))

(defmethod p5::ActionOption
  (:init
   (&key
    ((:action __action) (instance p5::Action :init))
    ((:effects __effects) (let (r) (dotimes (i 0) (push (instance p5::ActionEffect :init) r)) r))
    )
   (send-super :init)
   (setq _action __action)
   (setq _effects __effects)
   self)
  (:action
   (&rest __action)
   (if (keywordp (car __action))
       (send* _action __action)
     (progn
       (if __action (setq _action (car __action)))
       _action)))
  (:effects
   (&rest __effects)
   (if (keywordp (car __effects))
       (send* _effects __effects)
     (progn
       (if __effects (setq _effects (car __effects)))
       _effects)))
  (:serialization-length
   ()
   (+
    ;; p5/Action _action
    (send _action :serialization-length)
    ;; p5/ActionEffect[] _effects
    (apply #'+ (send-all _effects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; p5/Action _action
       (send _action :serialize s)
     ;; p5/ActionEffect[] _effects
     (write-long (length _effects) s)
     (dolist (elem _effects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; p5/Action _action
     (send _action :deserialize buf ptr-) (incf ptr- (send _action :serialization-length))
   ;; p5/ActionEffect[] _effects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effects (let (r) (dotimes (i n) (push (instance p5::ActionEffect :init) r)) r))
     (dolist (elem- _effects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get p5::ActionOption :md5sum-) "b85ff8a461d87e8dfc582b2fca18bd96")
(setf (get p5::ActionOption :datatype-) "p5/ActionOption")
(setf (get p5::ActionOption :definition-)
      "Action action		# The action can cause any one of the effects
ActionEffect[] effects

================================================================================
MSG: p5/Action
int8 STOP = -1
int8 SENSE = 0
int8 MOVE1 = 1
int8 MOVE2 = 2
int8 MOVE3 = 3
int8 MOVE4 = 4
int8 MOVE5 = 5

int8 name

================================================================================
MSG: p5/ActionEffect
State next_state	# the state this action is transitioning to
float64 probability	# the probability of that transition occurring in this state
float64 reward		# the reward resulting from this transition

================================================================================
MSG: p5/State
int8 location
float64[5] distribution

")



(provide :p5/ActionOption "b85ff8a461d87e8dfc582b2fca18bd96")


