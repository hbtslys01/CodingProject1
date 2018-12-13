; Auto-generated. Do not edit!


(cl:in-package p5-msg)


;//! \htmlinclude Action.msg.html

(cl:defclass <Action> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Action (<Action>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Action>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Action)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-msg:<Action> is deprecated: use p5-msg:Action instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-msg:name-val is deprecated.  Use p5-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Action>)))
    "Constants for message type '<Action>"
  '((:STOP . -1)
    (:SENSE . 0)
    (:MOVE1 . 1)
    (:MOVE2 . 2)
    (:MOVE3 . 3)
    (:MOVE4 . 4)
    (:MOVE5 . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Action)))
    "Constants for message type 'Action"
  '((:STOP . -1)
    (:SENSE . 0)
    (:MOVE1 . 1)
    (:MOVE2 . 2)
    (:MOVE3 . 3)
    (:MOVE4 . 4)
    (:MOVE5 . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Action>) ostream)
  "Serializes a message object of type '<Action>"
  (cl:let* ((signed (cl:slot-value msg 'name)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Action>) istream)
  "Deserializes a message object of type '<Action>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Action>)))
  "Returns string type for a message object of type '<Action>"
  "p5/Action")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Action)))
  "Returns string type for a message object of type 'Action"
  "p5/Action")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Action>)))
  "Returns md5sum for a message object of type '<Action>"
  "646567fa9f85aed8d6dd55ca92daef16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Action)))
  "Returns md5sum for a message object of type 'Action"
  "646567fa9f85aed8d6dd55ca92daef16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Action>)))
  "Returns full string definition for message of type '<Action>"
  (cl:format cl:nil "int8 STOP = -1~%int8 SENSE = 0~%int8 MOVE1 = 1~%int8 MOVE2 = 2~%int8 MOVE3 = 3~%int8 MOVE4 = 4~%int8 MOVE5 = 5~%~%int8 name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Action)))
  "Returns full string definition for message of type 'Action"
  (cl:format cl:nil "int8 STOP = -1~%int8 SENSE = 0~%int8 MOVE1 = 1~%int8 MOVE2 = 2~%int8 MOVE3 = 3~%int8 MOVE4 = 4~%int8 MOVE5 = 5~%~%int8 name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Action>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Action>))
  "Converts a ROS message object to a list"
  (cl:list 'Action
    (cl:cons ':name (name msg))
))
