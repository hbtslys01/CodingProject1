; Auto-generated. Do not edit!


(cl:in-package p5-msg)


;//! \htmlinclude ActionEffect.msg.html

(cl:defclass <ActionEffect> (roslisp-msg-protocol:ros-message)
  ((next_state
    :reader next_state
    :initarg :next_state
    :type p5-msg:State
    :initform (cl:make-instance 'p5-msg:State))
   (probability
    :reader probability
    :initarg :probability
    :type cl:float
    :initform 0.0)
   (reward
    :reader reward
    :initarg :reward
    :type cl:float
    :initform 0.0))
)

(cl:defclass ActionEffect (<ActionEffect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionEffect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionEffect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-msg:<ActionEffect> is deprecated: use p5-msg:ActionEffect instead.")))

(cl:ensure-generic-function 'next_state-val :lambda-list '(m))
(cl:defmethod next_state-val ((m <ActionEffect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-msg:next_state-val is deprecated.  Use p5-msg:next_state instead.")
  (next_state m))

(cl:ensure-generic-function 'probability-val :lambda-list '(m))
(cl:defmethod probability-val ((m <ActionEffect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-msg:probability-val is deprecated.  Use p5-msg:probability instead.")
  (probability m))

(cl:ensure-generic-function 'reward-val :lambda-list '(m))
(cl:defmethod reward-val ((m <ActionEffect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-msg:reward-val is deprecated.  Use p5-msg:reward instead.")
  (reward m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionEffect>) ostream)
  "Serializes a message object of type '<ActionEffect>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'next_state) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'reward))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionEffect>) istream)
  "Deserializes a message object of type '<ActionEffect>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'next_state) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probability) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reward) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionEffect>)))
  "Returns string type for a message object of type '<ActionEffect>"
  "p5/ActionEffect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionEffect)))
  "Returns string type for a message object of type 'ActionEffect"
  "p5/ActionEffect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionEffect>)))
  "Returns md5sum for a message object of type '<ActionEffect>"
  "389fa51769ae72e234321be7110c4f63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionEffect)))
  "Returns md5sum for a message object of type 'ActionEffect"
  "389fa51769ae72e234321be7110c4f63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionEffect>)))
  "Returns full string definition for message of type '<ActionEffect>"
  (cl:format cl:nil "State next_state	# the state this action is transitioning to~%float64 probability	# the probability of that transition occurring in this state~%float64 reward		# the reward resulting from this transition~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionEffect)))
  "Returns full string definition for message of type 'ActionEffect"
  (cl:format cl:nil "State next_state	# the state this action is transitioning to~%float64 probability	# the probability of that transition occurring in this state~%float64 reward		# the reward resulting from this transition~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionEffect>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'next_state))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionEffect>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionEffect
    (cl:cons ':next_state (next_state msg))
    (cl:cons ':probability (probability msg))
    (cl:cons ':reward (reward msg))
))
