; Auto-generated. Do not edit!


(cl:in-package p5-msg)


;//! \htmlinclude ActionOption.msg.html

(cl:defclass <ActionOption> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type p5-msg:Action
    :initform (cl:make-instance 'p5-msg:Action))
   (effects
    :reader effects
    :initarg :effects
    :type (cl:vector p5-msg:ActionEffect)
   :initform (cl:make-array 0 :element-type 'p5-msg:ActionEffect :initial-element (cl:make-instance 'p5-msg:ActionEffect))))
)

(cl:defclass ActionOption (<ActionOption>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionOption>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionOption)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-msg:<ActionOption> is deprecated: use p5-msg:ActionOption instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <ActionOption>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-msg:action-val is deprecated.  Use p5-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'effects-val :lambda-list '(m))
(cl:defmethod effects-val ((m <ActionOption>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-msg:effects-val is deprecated.  Use p5-msg:effects instead.")
  (effects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionOption>) ostream)
  "Serializes a message object of type '<ActionOption>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'effects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'effects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionOption>) istream)
  "Deserializes a message object of type '<ActionOption>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'effects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'effects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'p5-msg:ActionEffect))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionOption>)))
  "Returns string type for a message object of type '<ActionOption>"
  "p5/ActionOption")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionOption)))
  "Returns string type for a message object of type 'ActionOption"
  "p5/ActionOption")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionOption>)))
  "Returns md5sum for a message object of type '<ActionOption>"
  "b85ff8a461d87e8dfc582b2fca18bd96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionOption)))
  "Returns md5sum for a message object of type 'ActionOption"
  "b85ff8a461d87e8dfc582b2fca18bd96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionOption>)))
  "Returns full string definition for message of type '<ActionOption>"
  (cl:format cl:nil "Action action		# The action can cause any one of the effects~%ActionEffect[] effects~%~%================================================================================~%MSG: p5/Action~%int8 STOP = -1~%int8 SENSE = 0~%int8 MOVE1 = 1~%int8 MOVE2 = 2~%int8 MOVE3 = 3~%int8 MOVE4 = 4~%int8 MOVE5 = 5~%~%int8 name~%~%================================================================================~%MSG: p5/ActionEffect~%State next_state	# the state this action is transitioning to~%float64 probability	# the probability of that transition occurring in this state~%float64 reward		# the reward resulting from this transition~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionOption)))
  "Returns full string definition for message of type 'ActionOption"
  (cl:format cl:nil "Action action		# The action can cause any one of the effects~%ActionEffect[] effects~%~%================================================================================~%MSG: p5/Action~%int8 STOP = -1~%int8 SENSE = 0~%int8 MOVE1 = 1~%int8 MOVE2 = 2~%int8 MOVE3 = 3~%int8 MOVE4 = 4~%int8 MOVE5 = 5~%~%int8 name~%~%================================================================================~%MSG: p5/ActionEffect~%State next_state	# the state this action is transitioning to~%float64 probability	# the probability of that transition occurring in this state~%float64 reward		# the reward resulting from this transition~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionOption>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'effects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionOption>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionOption
    (cl:cons ':action (action msg))
    (cl:cons ':effects (effects msg))
))
