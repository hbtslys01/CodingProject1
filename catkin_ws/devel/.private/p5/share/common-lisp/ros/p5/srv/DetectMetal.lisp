; Auto-generated. Do not edit!


(cl:in-package p5-srv)


;//! \htmlinclude DetectMetal-request.msg.html

(cl:defclass <DetectMetal-request> (roslisp-msg-protocol:ros-message)
  ((block_id
    :reader block_id
    :initarg :block_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DetectMetal-request (<DetectMetal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectMetal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectMetal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<DetectMetal-request> is deprecated: use p5-srv:DetectMetal-request instead.")))

(cl:ensure-generic-function 'block_id-val :lambda-list '(m))
(cl:defmethod block_id-val ((m <DetectMetal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:block_id-val is deprecated.  Use p5-srv:block_id instead.")
  (block_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectMetal-request>) ostream)
  "Serializes a message object of type '<DetectMetal-request>"
  (cl:let* ((signed (cl:slot-value msg 'block_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectMetal-request>) istream)
  "Deserializes a message object of type '<DetectMetal-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'block_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectMetal-request>)))
  "Returns string type for a service object of type '<DetectMetal-request>"
  "p5/DetectMetalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectMetal-request)))
  "Returns string type for a service object of type 'DetectMetal-request"
  "p5/DetectMetalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectMetal-request>)))
  "Returns md5sum for a message object of type '<DetectMetal-request>"
  "2431cf74dff95a94498ba287cb39d5a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectMetal-request)))
  "Returns md5sum for a message object of type 'DetectMetal-request"
  "2431cf74dff95a94498ba287cb39d5a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectMetal-request>)))
  "Returns full string definition for message of type '<DetectMetal-request>"
  (cl:format cl:nil "int8 block_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectMetal-request)))
  "Returns full string definition for message of type 'DetectMetal-request"
  (cl:format cl:nil "int8 block_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectMetal-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectMetal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectMetal-request
    (cl:cons ':block_id (block_id msg))
))
;//! \htmlinclude DetectMetal-response.msg.html

(cl:defclass <DetectMetal-response> (roslisp-msg-protocol:ros-message)
  ((has_metal
    :reader has_metal
    :initarg :has_metal
    :type cl:boolean
    :initform cl:nil)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass DetectMetal-response (<DetectMetal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectMetal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectMetal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<DetectMetal-response> is deprecated: use p5-srv:DetectMetal-response instead.")))

(cl:ensure-generic-function 'has_metal-val :lambda-list '(m))
(cl:defmethod has_metal-val ((m <DetectMetal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:has_metal-val is deprecated.  Use p5-srv:has_metal instead.")
  (has_metal m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <DetectMetal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:distance-val is deprecated.  Use p5-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectMetal-response>) ostream)
  "Serializes a message object of type '<DetectMetal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_metal) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectMetal-response>) istream)
  "Deserializes a message object of type '<DetectMetal-response>"
    (cl:setf (cl:slot-value msg 'has_metal) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectMetal-response>)))
  "Returns string type for a service object of type '<DetectMetal-response>"
  "p5/DetectMetalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectMetal-response)))
  "Returns string type for a service object of type 'DetectMetal-response"
  "p5/DetectMetalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectMetal-response>)))
  "Returns md5sum for a message object of type '<DetectMetal-response>"
  "2431cf74dff95a94498ba287cb39d5a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectMetal-response)))
  "Returns md5sum for a message object of type 'DetectMetal-response"
  "2431cf74dff95a94498ba287cb39d5a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectMetal-response>)))
  "Returns full string definition for message of type '<DetectMetal-response>"
  (cl:format cl:nil "bool has_metal~%float64 distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectMetal-response)))
  "Returns full string definition for message of type 'DetectMetal-response"
  (cl:format cl:nil "bool has_metal~%float64 distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectMetal-response>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectMetal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectMetal-response
    (cl:cons ':has_metal (has_metal msg))
    (cl:cons ':distance (distance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DetectMetal)))
  'DetectMetal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DetectMetal)))
  'DetectMetal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectMetal)))
  "Returns string type for a service object of type '<DetectMetal>"
  "p5/DetectMetal")