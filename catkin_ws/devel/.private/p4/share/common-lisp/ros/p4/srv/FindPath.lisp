; Auto-generated. Do not edit!


(cl:in-package p4-srv)


;//! \htmlinclude FindPath-request.msg.html

(cl:defclass <FindPath-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (num_waypoints
    :reader num_waypoints
    :initarg :num_waypoints
    :type cl:integer
    :initform 0))
)

(cl:defclass FindPath-request (<FindPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p4-srv:<FindPath-request> is deprecated: use p4-srv:FindPath-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <FindPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p4-srv:start-val is deprecated.  Use p4-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <FindPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p4-srv:goal-val is deprecated.  Use p4-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'num_waypoints-val :lambda-list '(m))
(cl:defmethod num_waypoints-val ((m <FindPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p4-srv:num_waypoints-val is deprecated.  Use p4-srv:num_waypoints instead.")
  (num_waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindPath-request>) ostream)
  "Serializes a message object of type '<FindPath-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num_waypoints)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindPath-request>) istream)
  "Deserializes a message object of type '<FindPath-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_waypoints) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindPath-request>)))
  "Returns string type for a service object of type '<FindPath-request>"
  "p4/FindPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindPath-request)))
  "Returns string type for a service object of type 'FindPath-request"
  "p4/FindPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindPath-request>)))
  "Returns md5sum for a message object of type '<FindPath-request>"
  "7a0021ee1a6c7c0d91e54fbc04ac10ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindPath-request)))
  "Returns md5sum for a message object of type 'FindPath-request"
  "7a0021ee1a6c7c0d91e54fbc04ac10ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindPath-request>)))
  "Returns full string definition for message of type '<FindPath-request>"
  (cl:format cl:nil "geometry_msgs/Point start~%geometry_msgs/Point goal~%int32 num_waypoints~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindPath-request)))
  "Returns full string definition for message of type 'FindPath-request"
  (cl:format cl:nil "geometry_msgs/Point start~%geometry_msgs/Point goal~%int32 num_waypoints~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindPath-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FindPath-request
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':num_waypoints (num_waypoints msg))
))
;//! \htmlinclude FindPath-response.msg.html

(cl:defclass <FindPath-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass FindPath-response (<FindPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p4-srv:<FindPath-response> is deprecated: use p4-srv:FindPath-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <FindPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p4-srv:path-val is deprecated.  Use p4-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindPath-response>) ostream)
  "Serializes a message object of type '<FindPath-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindPath-response>) istream)
  "Deserializes a message object of type '<FindPath-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindPath-response>)))
  "Returns string type for a service object of type '<FindPath-response>"
  "p4/FindPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindPath-response)))
  "Returns string type for a service object of type 'FindPath-response"
  "p4/FindPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindPath-response>)))
  "Returns md5sum for a message object of type '<FindPath-response>"
  "7a0021ee1a6c7c0d91e54fbc04ac10ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindPath-response)))
  "Returns md5sum for a message object of type 'FindPath-response"
  "7a0021ee1a6c7c0d91e54fbc04ac10ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindPath-response>)))
  "Returns full string definition for message of type '<FindPath-response>"
  (cl:format cl:nil "geometry_msgs/Point[] path~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindPath-response)))
  "Returns full string definition for message of type 'FindPath-response"
  (cl:format cl:nil "geometry_msgs/Point[] path~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindPath-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FindPath-response
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FindPath)))
  'FindPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FindPath)))
  'FindPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindPath)))
  "Returns string type for a service object of type '<FindPath>"
  "p4/FindPath")