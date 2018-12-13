; Auto-generated. Do not edit!


(cl:in-package p1-srv)


;//! \htmlinclude Draw-request.msg.html

(cl:defclass <Draw-request> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:float
    :initform 0.0)
   (rotate
    :reader rotate
    :initarg :rotate
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Draw-request (<Draw-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Draw-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Draw-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p1-srv:<Draw-request> is deprecated: use p1-srv:Draw-request instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <Draw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p1-srv:count-val is deprecated.  Use p1-srv:count instead.")
  (count m))

(cl:ensure-generic-function 'rotate-val :lambda-list '(m))
(cl:defmethod rotate-val ((m <Draw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p1-srv:rotate-val is deprecated.  Use p1-srv:rotate instead.")
  (rotate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Draw-request>) ostream)
  "Serializes a message object of type '<Draw-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'count))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rotate) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Draw-request>) istream)
  "Deserializes a message object of type '<Draw-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'count) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'rotate) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Draw-request>)))
  "Returns string type for a service object of type '<Draw-request>"
  "p1/DrawRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Draw-request)))
  "Returns string type for a service object of type 'Draw-request"
  "p1/DrawRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Draw-request>)))
  "Returns md5sum for a message object of type '<Draw-request>"
  "d74afb0d9a5429b7e16cd23054d13ebb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Draw-request)))
  "Returns md5sum for a message object of type 'Draw-request"
  "d74afb0d9a5429b7e16cd23054d13ebb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Draw-request>)))
  "Returns full string definition for message of type '<Draw-request>"
  (cl:format cl:nil "float64 count~%bool rotate~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Draw-request)))
  "Returns full string definition for message of type 'Draw-request"
  (cl:format cl:nil "float64 count~%bool rotate~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Draw-request>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Draw-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Draw-request
    (cl:cons ':count (count msg))
    (cl:cons ':rotate (rotate msg))
))
;//! \htmlinclude Draw-response.msg.html

(cl:defclass <Draw-response> (roslisp-msg-protocol:ros-message)
  ((vel
    :reader vel
    :initarg :vel
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass Draw-response (<Draw-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Draw-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Draw-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p1-srv:<Draw-response> is deprecated: use p1-srv:Draw-response instead.")))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <Draw-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p1-srv:vel-val is deprecated.  Use p1-srv:vel instead.")
  (vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Draw-response>) ostream)
  "Serializes a message object of type '<Draw-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Draw-response>) istream)
  "Deserializes a message object of type '<Draw-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Draw-response>)))
  "Returns string type for a service object of type '<Draw-response>"
  "p1/DrawResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Draw-response)))
  "Returns string type for a service object of type 'Draw-response"
  "p1/DrawResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Draw-response>)))
  "Returns md5sum for a message object of type '<Draw-response>"
  "d74afb0d9a5429b7e16cd23054d13ebb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Draw-response)))
  "Returns md5sum for a message object of type 'Draw-response"
  "d74afb0d9a5429b7e16cd23054d13ebb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Draw-response>)))
  "Returns full string definition for message of type '<Draw-response>"
  (cl:format cl:nil "~%geometry_msgs/Twist vel~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Draw-response)))
  "Returns full string definition for message of type 'Draw-response"
  (cl:format cl:nil "~%geometry_msgs/Twist vel~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Draw-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Draw-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Draw-response
    (cl:cons ':vel (vel msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Draw)))
  'Draw-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Draw)))
  'Draw-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Draw)))
  "Returns string type for a service object of type '<Draw>"
  "p1/Draw")