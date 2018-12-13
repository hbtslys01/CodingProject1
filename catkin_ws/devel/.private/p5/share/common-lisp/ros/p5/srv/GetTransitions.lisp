; Auto-generated. Do not edit!


(cl:in-package p5-srv)


;//! \htmlinclude GetTransitions-request.msg.html

(cl:defclass <GetTransitions-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type p5-msg:State
    :initform (cl:make-instance 'p5-msg:State)))
)

(cl:defclass GetTransitions-request (<GetTransitions-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransitions-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransitions-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<GetTransitions-request> is deprecated: use p5-srv:GetTransitions-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetTransitions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:state-val is deprecated.  Use p5-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransitions-request>) ostream)
  "Serializes a message object of type '<GetTransitions-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransitions-request>) istream)
  "Deserializes a message object of type '<GetTransitions-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransitions-request>)))
  "Returns string type for a service object of type '<GetTransitions-request>"
  "p5/GetTransitionsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransitions-request)))
  "Returns string type for a service object of type 'GetTransitions-request"
  "p5/GetTransitionsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransitions-request>)))
  "Returns md5sum for a message object of type '<GetTransitions-request>"
  "1fab3630f0a783dcf6c5e57c78db46b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransitions-request)))
  "Returns md5sum for a message object of type 'GetTransitions-request"
  "1fab3630f0a783dcf6c5e57c78db46b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransitions-request>)))
  "Returns full string definition for message of type '<GetTransitions-request>"
  (cl:format cl:nil "State state~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransitions-request)))
  "Returns full string definition for message of type 'GetTransitions-request"
  (cl:format cl:nil "State state~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransitions-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransitions-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransitions-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude GetTransitions-response.msg.html

(cl:defclass <GetTransitions-response> (roslisp-msg-protocol:ros-message)
  ((actions
    :reader actions
    :initarg :actions
    :type (cl:vector p5-msg:ActionOption)
   :initform (cl:make-array 0 :element-type 'p5-msg:ActionOption :initial-element (cl:make-instance 'p5-msg:ActionOption))))
)

(cl:defclass GetTransitions-response (<GetTransitions-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransitions-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransitions-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<GetTransitions-response> is deprecated: use p5-srv:GetTransitions-response instead.")))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <GetTransitions-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:actions-val is deprecated.  Use p5-srv:actions instead.")
  (actions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransitions-response>) ostream)
  "Serializes a message object of type '<GetTransitions-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'actions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransitions-response>) istream)
  "Deserializes a message object of type '<GetTransitions-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'p5-msg:ActionOption))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransitions-response>)))
  "Returns string type for a service object of type '<GetTransitions-response>"
  "p5/GetTransitionsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransitions-response)))
  "Returns string type for a service object of type 'GetTransitions-response"
  "p5/GetTransitionsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransitions-response>)))
  "Returns md5sum for a message object of type '<GetTransitions-response>"
  "1fab3630f0a783dcf6c5e57c78db46b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransitions-response)))
  "Returns md5sum for a message object of type 'GetTransitions-response"
  "1fab3630f0a783dcf6c5e57c78db46b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransitions-response>)))
  "Returns full string definition for message of type '<GetTransitions-response>"
  (cl:format cl:nil "ActionOption[] actions~%~%~%================================================================================~%MSG: p5/ActionOption~%Action action		# The action can cause any one of the effects~%ActionEffect[] effects~%~%================================================================================~%MSG: p5/Action~%int8 STOP = -1~%int8 SENSE = 0~%int8 MOVE1 = 1~%int8 MOVE2 = 2~%int8 MOVE3 = 3~%int8 MOVE4 = 4~%int8 MOVE5 = 5~%~%int8 name~%~%================================================================================~%MSG: p5/ActionEffect~%State next_state	# the state this action is transitioning to~%float64 probability	# the probability of that transition occurring in this state~%float64 reward		# the reward resulting from this transition~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransitions-response)))
  "Returns full string definition for message of type 'GetTransitions-response"
  (cl:format cl:nil "ActionOption[] actions~%~%~%================================================================================~%MSG: p5/ActionOption~%Action action		# The action can cause any one of the effects~%ActionEffect[] effects~%~%================================================================================~%MSG: p5/Action~%int8 STOP = -1~%int8 SENSE = 0~%int8 MOVE1 = 1~%int8 MOVE2 = 2~%int8 MOVE3 = 3~%int8 MOVE4 = 4~%int8 MOVE5 = 5~%~%int8 name~%~%================================================================================~%MSG: p5/ActionEffect~%State next_state	# the state this action is transitioning to~%float64 probability	# the probability of that transition occurring in this state~%float64 reward		# the reward resulting from this transition~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransitions-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransitions-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransitions-response
    (cl:cons ':actions (actions msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTransitions)))
  'GetTransitions-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTransitions)))
  'GetTransitions-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransitions)))
  "Returns string type for a service object of type '<GetTransitions>"
  "p5/GetTransitions")