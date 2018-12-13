; Auto-generated. Do not edit!


(cl:in-package p5-srv)


;//! \htmlinclude GetPosition-request.msg.html

(cl:defclass <GetPosition-request> (roslisp-msg-protocol:ros-message)
  ((block_id
    :reader block_id
    :initarg :block_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetPosition-request (<GetPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<GetPosition-request> is deprecated: use p5-srv:GetPosition-request instead.")))

(cl:ensure-generic-function 'block_id-val :lambda-list '(m))
(cl:defmethod block_id-val ((m <GetPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:block_id-val is deprecated.  Use p5-srv:block_id instead.")
  (block_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPosition-request>) ostream)
  "Serializes a message object of type '<GetPosition-request>"
  (cl:let* ((signed (cl:slot-value msg 'block_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPosition-request>) istream)
  "Deserializes a message object of type '<GetPosition-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'block_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPosition-request>)))
  "Returns string type for a service object of type '<GetPosition-request>"
  "p5/GetPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPosition-request)))
  "Returns string type for a service object of type 'GetPosition-request"
  "p5/GetPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPosition-request>)))
  "Returns md5sum for a message object of type '<GetPosition-request>"
  "0825ed03ec91bc18995b0b869f5989a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPosition-request)))
  "Returns md5sum for a message object of type 'GetPosition-request"
  "0825ed03ec91bc18995b0b869f5989a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPosition-request>)))
  "Returns full string definition for message of type '<GetPosition-request>"
  (cl:format cl:nil "int8 block_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPosition-request)))
  "Returns full string definition for message of type 'GetPosition-request"
  (cl:format cl:nil "int8 block_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPosition-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPosition-request
    (cl:cons ':block_id (block_id msg))
))
;//! \htmlinclude GetPosition-response.msg.html

(cl:defclass <GetPosition-response> (roslisp-msg-protocol:ros-message)
  ((loc
    :reader loc
    :initarg :loc
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass GetPosition-response (<GetPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<GetPosition-response> is deprecated: use p5-srv:GetPosition-response instead.")))

(cl:ensure-generic-function 'loc-val :lambda-list '(m))
(cl:defmethod loc-val ((m <GetPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:loc-val is deprecated.  Use p5-srv:loc instead.")
  (loc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPosition-response>) ostream)
  "Serializes a message object of type '<GetPosition-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'loc) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPosition-response>) istream)
  "Deserializes a message object of type '<GetPosition-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'loc) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPosition-response>)))
  "Returns string type for a service object of type '<GetPosition-response>"
  "p5/GetPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPosition-response)))
  "Returns string type for a service object of type 'GetPosition-response"
  "p5/GetPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPosition-response>)))
  "Returns md5sum for a message object of type '<GetPosition-response>"
  "0825ed03ec91bc18995b0b869f5989a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPosition-response)))
  "Returns md5sum for a message object of type 'GetPosition-response"
  "0825ed03ec91bc18995b0b869f5989a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPosition-response>)))
  "Returns full string definition for message of type '<GetPosition-response>"
  (cl:format cl:nil "geometry_msgs/Point loc~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPosition-response)))
  "Returns full string definition for message of type 'GetPosition-response"
  (cl:format cl:nil "geometry_msgs/Point loc~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPosition-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'loc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPosition-response
    (cl:cons ':loc (loc msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPosition)))
  'GetPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPosition)))
  'GetPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPosition)))
  "Returns string type for a service object of type '<GetPosition>"
  "p5/GetPosition")