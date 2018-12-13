; Auto-generated. Do not edit!


(cl:in-package p5-srv)


;//! \htmlinclude ComputeEntropy-request.msg.html

(cl:defclass <ComputeEntropy-request> (roslisp-msg-protocol:ros-message)
  ((distribution
    :reader distribution
    :initarg :distribution
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ComputeEntropy-request (<ComputeEntropy-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputeEntropy-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputeEntropy-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<ComputeEntropy-request> is deprecated: use p5-srv:ComputeEntropy-request instead.")))

(cl:ensure-generic-function 'distribution-val :lambda-list '(m))
(cl:defmethod distribution-val ((m <ComputeEntropy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:distribution-val is deprecated.  Use p5-srv:distribution instead.")
  (distribution m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputeEntropy-request>) ostream)
  "Serializes a message object of type '<ComputeEntropy-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputeEntropy-request>) istream)
  "Deserializes a message object of type '<ComputeEntropy-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputeEntropy-request>)))
  "Returns string type for a service object of type '<ComputeEntropy-request>"
  "p5/ComputeEntropyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeEntropy-request)))
  "Returns string type for a service object of type 'ComputeEntropy-request"
  "p5/ComputeEntropyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputeEntropy-request>)))
  "Returns md5sum for a message object of type '<ComputeEntropy-request>"
  "684ca74828f5f8845f5e461f587028b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputeEntropy-request)))
  "Returns md5sum for a message object of type 'ComputeEntropy-request"
  "684ca74828f5f8845f5e461f587028b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputeEntropy-request>)))
  "Returns full string definition for message of type '<ComputeEntropy-request>"
  (cl:format cl:nil "float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputeEntropy-request)))
  "Returns full string definition for message of type 'ComputeEntropy-request"
  (cl:format cl:nil "float64[5] distribution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputeEntropy-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'distribution) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputeEntropy-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputeEntropy-request
    (cl:cons ':distribution (distribution msg))
))
;//! \htmlinclude ComputeEntropy-response.msg.html

(cl:defclass <ComputeEntropy-response> (roslisp-msg-protocol:ros-message)
  ((entropy
    :reader entropy
    :initarg :entropy
    :type cl:float
    :initform 0.0))
)

(cl:defclass ComputeEntropy-response (<ComputeEntropy-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputeEntropy-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputeEntropy-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<ComputeEntropy-response> is deprecated: use p5-srv:ComputeEntropy-response instead.")))

(cl:ensure-generic-function 'entropy-val :lambda-list '(m))
(cl:defmethod entropy-val ((m <ComputeEntropy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:entropy-val is deprecated.  Use p5-srv:entropy instead.")
  (entropy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputeEntropy-response>) ostream)
  "Serializes a message object of type '<ComputeEntropy-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'entropy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputeEntropy-response>) istream)
  "Deserializes a message object of type '<ComputeEntropy-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'entropy) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputeEntropy-response>)))
  "Returns string type for a service object of type '<ComputeEntropy-response>"
  "p5/ComputeEntropyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeEntropy-response)))
  "Returns string type for a service object of type 'ComputeEntropy-response"
  "p5/ComputeEntropyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputeEntropy-response>)))
  "Returns md5sum for a message object of type '<ComputeEntropy-response>"
  "684ca74828f5f8845f5e461f587028b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputeEntropy-response)))
  "Returns md5sum for a message object of type 'ComputeEntropy-response"
  "684ca74828f5f8845f5e461f587028b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputeEntropy-response>)))
  "Returns full string definition for message of type '<ComputeEntropy-response>"
  (cl:format cl:nil "float64 entropy~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputeEntropy-response)))
  "Returns full string definition for message of type 'ComputeEntropy-response"
  (cl:format cl:nil "float64 entropy~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputeEntropy-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputeEntropy-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputeEntropy-response
    (cl:cons ':entropy (entropy msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ComputeEntropy)))
  'ComputeEntropy-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ComputeEntropy)))
  'ComputeEntropy-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeEntropy)))
  "Returns string type for a service object of type '<ComputeEntropy>"
  "p5/ComputeEntropy")