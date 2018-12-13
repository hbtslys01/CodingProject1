;; Auto-generated. Do not edit!


(when (boundp 'p5::GetTransitions)
  (if (not (find-package "P5"))
    (make-package "P5"))
  (shadow 'GetTransitions (find-package "P5")))
(unless (find-package "P5::GETTRANSITIONS")
  (make-package "P5::GETTRANSITIONS"))
(unless (find-package "P5::GETTRANSITIONSREQUEST")
  (make-package "P5::GETTRANSITIONSREQUEST"))
(unless (find-package "P5::GETTRANSITIONSRESPONSE")
  (make-package "P5::GETTRANSITIONSRESPONSE"))

(in-package "ROS")





(defclass p5::GetTransitionsRequest
  :super ros::object
  :slots (_state ))

(defmethod p5::GetTransitionsRequest
  (:init
   (&key
    ((:state __state) (instance p5::State :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; p5/State _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; p5/State _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; p5/State _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass p5::GetTransitionsResponse
  :super ros::object
  :slots (_actions ))

(defmethod p5::GetTransitionsResponse
  (:init
   (&key
    ((:actions __actions) (let (r) (dotimes (i 0) (push (instance p5::ActionOption :init) r)) r))
    )
   (send-super :init)
   (setq _actions __actions)
   self)
  (:actions
   (&rest __actions)
   (if (keywordp (car __actions))
       (send* _actions __actions)
     (progn
       (if __actions (setq _actions (car __actions)))
       _actions)))
  (:serialization-length
   ()
   (+
    ;; p5/ActionOption[] _actions
    (apply #'+ (send-all _actions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; p5/ActionOption[] _actions
     (write-long (length _actions) s)
     (dolist (elem _actions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; p5/ActionOption[] _actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actions (let (r) (dotimes (i n) (push (instance p5::ActionOption :init) r)) r))
     (dolist (elem- _actions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass p5::GetTransitions
  :super ros::object
  :slots ())

(setf (get p5::GetTransitions :md5sum-) "1fab3630f0a783dcf6c5e57c78db46b6")
(setf (get p5::GetTransitions :datatype-) "p5/GetTransitions")
(setf (get p5::GetTransitions :request) p5::GetTransitionsRequest)
(setf (get p5::GetTransitions :response) p5::GetTransitionsResponse)

(defmethod p5::GetTransitionsRequest
  (:response () (instance p5::GetTransitionsResponse :init)))

(setf (get p5::GetTransitionsRequest :md5sum-) "1fab3630f0a783dcf6c5e57c78db46b6")
(setf (get p5::GetTransitionsRequest :datatype-) "p5/GetTransitionsRequest")
(setf (get p5::GetTransitionsRequest :definition-)
      "State state

================================================================================
MSG: p5/State
int8 location
float64[5] distribution
---
ActionOption[] actions


================================================================================
MSG: p5/ActionOption
Action action		# The action can cause any one of the effects
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

(setf (get p5::GetTransitionsResponse :md5sum-) "1fab3630f0a783dcf6c5e57c78db46b6")
(setf (get p5::GetTransitionsResponse :datatype-) "p5/GetTransitionsResponse")
(setf (get p5::GetTransitionsResponse :definition-)
      "State state

================================================================================
MSG: p5/State
int8 location
float64[5] distribution
---
ActionOption[] actions


================================================================================
MSG: p5/ActionOption
Action action		# The action can cause any one of the effects
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



(provide :p5/GetTransitions "1fab3630f0a783dcf6c5e57c78db46b6")


