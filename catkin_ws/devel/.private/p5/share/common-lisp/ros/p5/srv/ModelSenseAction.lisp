; Auto-generated. Do not edit!


(cl:in-package p5-srv)


;//! \htmlinclude ModelSenseAction-request.msg.html

(cl:defclass <ModelSenseAction-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type p5-msg:State
    :initform (cl:make-instance 'p5-msg:State)))
)

(cl:defclass ModelSenseAction-request (<ModelSenseAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModelSenseAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModelSenseAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<ModelSenseAction-request> is deprecated: use p5-srv:ModelSenseAction-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ModelSenseAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:state-val is deprecated.  Use p5-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModelSenseAction-request>) ostream)
  "Serializes a message object of type '<ModelSenseAction-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModelSenseAction-request>) istream)
  "Deserializes a message object of type '<ModelSenseAction-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModelSenseAction-request>)))
  "Returns string type for a service object of type '<ModelSenseAction-request>"
  "p5/ModelSenseActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModelSenseAction-request)))
  "Returns string type for a service object of type 'ModelSenseAction-request"
  "p5/ModelSenseActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModelSenseAction-request>)))
  "Returns md5sum for a message object of type '<ModelSenseAction-request>"
  "ccc320a8f7fd9b1f63d549e5acbe4ce5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModelSenseAction-request)))
  "Returns md5sum for a message object of type 'ModelSenseAction-request"
  "ccc320a8f7fd9b1f63d549e5acbe4ce5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModelSenseAction-request>)))
  "Returns full string definition for message of type '<ModelSenseAction-request>"
  (cl:format cl:nil "State state~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModelSenseAction-request)))
  "Returns full string definition for message of type 'ModelSenseAction-request"
  (cl:format cl:nil "State state~%~%================================================================================~%MSG: p5/State~%int8 location~%float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModelSenseAction-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModelSenseAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ModelSenseAction-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude ModelSenseAction-response.msg.html

(cl:defclass <ModelSenseAction-response> (roslisp-msg-protocol:ros-message)
  ((distribution
    :reader distribution
    :initarg :distribution
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ModelSenseAction-response (<ModelSenseAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModelSenseAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModelSenseAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<ModelSenseAction-response> is deprecated: use p5-srv:ModelSenseAction-response instead.")))

(cl:ensure-generic-function 'distribution-val :lambda-list '(m))
(cl:defmethod distribution-val ((m <ModelSenseAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:distribution-val is deprecated.  Use p5-srv:distribution instead.")
  (distribution m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModelSenseAction-response>) ostream)
  "Serializes a message object of type '<ModelSenseAction-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'distribution))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModelSenseAction-response>) istream)
  "Deserializes a message object of type '<ModelSenseAction-response>"
  (cl:setf (cl:slot-value msg 'distribution) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'distribution)))
    (cl:dotimes (i 5)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModelSenseAction-response>)))
  "Returns string type for a service object of type '<ModelSenseAction-response>"
  "p5/ModelSenseActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModelSenseAction-response)))
  "Returns string type for a service object of type 'ModelSenseAction-response"
  "p5/ModelSenseActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModelSenseAction-response>)))
  "Returns md5sum for a message object of type '<ModelSenseAction-response>"
  "ccc320a8f7fd9b1f63d549e5acbe4ce5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModelSenseAction-response)))
  "Returns md5sum for a message object of type 'ModelSenseAction-response"
  "ccc320a8f7fd9b1f63d549e5acbe4ce5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModelSenseAction-response>)))
  "Returns full string definition for message of type '<ModelSenseAction-response>"
  (cl:format cl:nil "float64[5] distribution~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModelSenseAction-response)))
  "Returns full string definition for message of type 'ModelSenseAction-response"
  (cl:format cl:nil "float64[5] distribution~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModelSenseAction-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'distribution) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModelSenseAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ModelSenseAction-response
    (cl:cons ':distribution (distribution msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ModelSenseAction)))
  'ModelSenseAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ModelSenseAction)))
  'ModelSenseAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModelSenseAction)))
  "Returns string type for a service object of type '<ModelSenseAction>"
  "p5/ModelSenseAction")