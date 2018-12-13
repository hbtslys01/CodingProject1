; Auto-generated. Do not edit!


(cl:in-package p5-srv)


;//! \htmlinclude ClosestPointPath-request.msg.html

(cl:defclass <ClosestPointPath-request> (roslisp-msg-protocol:ros-message)
  ((robot_position
    :reader robot_position
    :initarg :robot_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (path
    :reader path
    :initarg :path
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass ClosestPointPath-request (<ClosestPointPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClosestPointPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClosestPointPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<ClosestPointPath-request> is deprecated: use p5-srv:ClosestPointPath-request instead.")))

(cl:ensure-generic-function 'robot_position-val :lambda-list '(m))
(cl:defmethod robot_position-val ((m <ClosestPointPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:robot_position-val is deprecated.  Use p5-srv:robot_position instead.")
  (robot_position m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <ClosestPointPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:path-val is deprecated.  Use p5-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClosestPointPath-request>) ostream)
  "Serializes a message object of type '<ClosestPointPath-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_position) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClosestPointPath-request>) istream)
  "Deserializes a message object of type '<ClosestPointPath-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_position) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClosestPointPath-request>)))
  "Returns string type for a service object of type '<ClosestPointPath-request>"
  "p5/ClosestPointPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClosestPointPath-request)))
  "Returns string type for a service object of type 'ClosestPointPath-request"
  "p5/ClosestPointPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClosestPointPath-request>)))
  "Returns md5sum for a message object of type '<ClosestPointPath-request>"
  "a4eb7978da311d6bb271e96cc9f6a8e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClosestPointPath-request)))
  "Returns md5sum for a message object of type 'ClosestPointPath-request"
  "a4eb7978da311d6bb271e96cc9f6a8e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClosestPointPath-request>)))
  "Returns full string definition for message of type '<ClosestPointPath-request>"
  (cl:format cl:nil "geometry_msgs/Point robot_position~%geometry_msgs/Point[] path~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClosestPointPath-request)))
  "Returns full string definition for message of type 'ClosestPointPath-request"
  (cl:format cl:nil "geometry_msgs/Point robot_position~%geometry_msgs/Point[] path~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClosestPointPath-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_position))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClosestPointPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClosestPointPath-request
    (cl:cons ':robot_position (robot_position msg))
    (cl:cons ':path (path msg))
))
;//! \htmlinclude ClosestPointPath-response.msg.html

(cl:defclass <ClosestPointPath-response> (roslisp-msg-protocol:ros-message)
  ((closest_point
    :reader closest_point
    :initarg :closest_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (path_position
    :reader path_position
    :initarg :path_position
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (dist_to_path
    :reader dist_to_path
    :initarg :dist_to_path
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass ClosestPointPath-response (<ClosestPointPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClosestPointPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClosestPointPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p5-srv:<ClosestPointPath-response> is deprecated: use p5-srv:ClosestPointPath-response instead.")))

(cl:ensure-generic-function 'closest_point-val :lambda-list '(m))
(cl:defmethod closest_point-val ((m <ClosestPointPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:closest_point-val is deprecated.  Use p5-srv:closest_point instead.")
  (closest_point m))

(cl:ensure-generic-function 'path_position-val :lambda-list '(m))
(cl:defmethod path_position-val ((m <ClosestPointPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:path_position-val is deprecated.  Use p5-srv:path_position instead.")
  (path_position m))

(cl:ensure-generic-function 'dist_to_path-val :lambda-list '(m))
(cl:defmethod dist_to_path-val ((m <ClosestPointPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p5-srv:dist_to_path-val is deprecated.  Use p5-srv:dist_to_path instead.")
  (dist_to_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClosestPointPath-response>) ostream)
  "Serializes a message object of type '<ClosestPointPath-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'closest_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dist_to_path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClosestPointPath-response>) istream)
  "Deserializes a message object of type '<ClosestPointPath-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'closest_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dist_to_path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClosestPointPath-response>)))
  "Returns string type for a service object of type '<ClosestPointPath-response>"
  "p5/ClosestPointPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClosestPointPath-response)))
  "Returns string type for a service object of type 'ClosestPointPath-response"
  "p5/ClosestPointPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClosestPointPath-response>)))
  "Returns md5sum for a message object of type '<ClosestPointPath-response>"
  "a4eb7978da311d6bb271e96cc9f6a8e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClosestPointPath-response)))
  "Returns md5sum for a message object of type 'ClosestPointPath-response"
  "a4eb7978da311d6bb271e96cc9f6a8e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClosestPointPath-response>)))
  "Returns full string definition for message of type '<ClosestPointPath-response>"
  (cl:format cl:nil "geometry_msgs/Point closest_point~%std_msgs/Float32 path_position~%std_msgs/Float32 dist_to_path~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClosestPointPath-response)))
  "Returns full string definition for message of type 'ClosestPointPath-response"
  (cl:format cl:nil "geometry_msgs/Point closest_point~%std_msgs/Float32 path_position~%std_msgs/Float32 dist_to_path~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClosestPointPath-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'closest_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dist_to_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClosestPointPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClosestPointPath-response
    (cl:cons ':closest_point (closest_point msg))
    (cl:cons ':path_position (path_position msg))
    (cl:cons ':dist_to_path (dist_to_path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClosestPointPath)))
  'ClosestPointPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClosestPointPath)))
  'ClosestPointPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClosestPointPath)))
  "Returns string type for a service object of type '<ClosestPointPath>"
  "p5/ClosestPointPath")