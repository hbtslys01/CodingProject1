; Auto-generated. Do not edit!


(cl:in-package p5-srv)


;//! \htmlinclude SenseBall-request.msg.html

(cl:defclass <SenseBall-request> (roslisp-msg-protocol:ros-message)
  ((prior
    :reader prior
    :initarg :prior
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SenseBall-request (<SenseBall-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SenseBall-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SenseBall-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<SenseBall-request> is deprecated: use p5-srv:SenseBall-request instead.")))

(cl:ensure-generic-function 'prior-val :lambda-list '(m))
(cl:defmethod prior-val ((m <SenseBall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:prior-val is deprecated.  Use p5-srv:prior instead.")
  (prior m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SenseBall-request>) ostream)
  "Serializes a message object of type '<SenseBall-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'prior))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SenseBall-request>) istream)
  "Deserializes a message object of type '<SenseBall-request>"
  (cl:setf (cl:slot-value msg 'prior) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'prior)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SenseBall-request>)))
  "Returns string type for a service object of type '<SenseBall-request>"
  "p5/SenseBallRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SenseBall-request)))
  "Returns string type for a service object of type 'SenseBall-request"
  "p5/SenseBallRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SenseBall-request>)))
  "Returns md5sum for a message object of type '<SenseBall-request>"
  "8ce6ebce87f7bc56c55f1869e06cebba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SenseBall-request)))
  "Returns md5sum for a message object of type 'SenseBall-request"
  "8ce6ebce87f7bc56c55f1869e06cebba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SenseBall-request>)))
  "Returns full string definition for message of type '<SenseBall-request>"
  (cl:format cl:nil "float64[5] prior~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SenseBall-request)))
  "Returns full string definition for message of type 'SenseBall-request"
  (cl:format cl:nil "float64[5] prior~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SenseBall-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'prior) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SenseBall-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SenseBall-request
    (cl:cons ':prior (prior msg))
))
;//! \htmlinclude SenseBall-response.msg.html

(cl:defclass <SenseBall-response> (roslisp-msg-protocol:ros-message)
  ((distribution
    :reader distribution
    :initarg :distribution
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SenseBall-response (<SenseBall-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SenseBall-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SenseBall-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<SenseBall-response> is deprecated: use p5-srv:SenseBall-response instead.")))

(cl:ensure-generic-function 'distribution-val :lambda-list '(m))
(cl:defmethod distribution-val ((m <SenseBall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:distribution-val is deprecated.  Use p5-srv:distribution instead.")
  (distribution m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SenseBall-response>) ostream)
  "Serializes a message object of type '<SenseBall-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SenseBall-response>) istream)
  "Deserializes a message object of type '<SenseBall-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SenseBall-response>)))
  "Returns string type for a service object of type '<SenseBall-response>"
  "p5/SenseBallResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SenseBall-response)))
  "Returns string type for a service object of type 'SenseBall-response"
  "p5/SenseBallResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SenseBall-response>)))
  "Returns md5sum for a message object of type '<SenseBall-response>"
  "8ce6ebce87f7bc56c55f1869e06cebba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SenseBall-response)))
  "Returns md5sum for a message object of type 'SenseBall-response"
  "8ce6ebce87f7bc56c55f1869e06cebba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SenseBall-response>)))
  "Returns full string definition for message of type '<SenseBall-response>"
  (cl:format cl:nil "float64[5] distribution~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SenseBall-response)))
  "Returns full string definition for message of type 'SenseBall-response"
  (cl:format cl:nil "float64[5] distribution~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SenseBall-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'distribution) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SenseBall-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SenseBall-response
    (cl:cons ':distribution (distribution msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SenseBall)))
  'SenseBall-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SenseBall)))
  'SenseBall-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SenseBall)))
  "Returns string type for a service object of type '<SenseBall>"
  "p5/SenseBall")