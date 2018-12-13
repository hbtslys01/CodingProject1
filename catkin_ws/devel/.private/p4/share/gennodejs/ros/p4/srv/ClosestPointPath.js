// Auto-generated. Do not edit!

// (in-package p4.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ClosestPointPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_position = null;
      this.path = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_position')) {
        this.robot_position = initObj.robot_position
      }
      else {
        this.robot_position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClosestPointPathRequest
    // Serialize message field [robot_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.robot_position, buffer, bufferOffset);
    // Serialize message field [path]
    // Serialize the length for message field [path]
    bufferOffset = _serializer.uint32(obj.path.length, buffer, bufferOffset);
    obj.path.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClosestPointPathRequest
    let len;
    let data = new ClosestPointPathRequest(null);
    // Deserialize message field [robot_position]
    data.robot_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [path]
    // Deserialize array length for message field [path]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.path.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p4/ClosestPointPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69132ef72062833147deff265b0303b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point robot_position
    geometry_msgs/Point[] path
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClosestPointPathRequest(null);
    if (msg.robot_position !== undefined) {
      resolved.robot_position = geometry_msgs.msg.Point.Resolve(msg.robot_position)
    }
    else {
      resolved.robot_position = new geometry_msgs.msg.Point()
    }

    if (msg.path !== undefined) {
      resolved.path = new Array(msg.path.length);
      for (let i = 0; i < resolved.path.length; ++i) {
        resolved.path[i] = geometry_msgs.msg.Point.Resolve(msg.path[i]);
      }
    }
    else {
      resolved.path = []
    }

    return resolved;
    }
};

class ClosestPointPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.closest_point = null;
      this.path_position = null;
      this.dist_to_path = null;
    }
    else {
      if (initObj.hasOwnProperty('closest_point')) {
        this.closest_point = initObj.closest_point
      }
      else {
        this.closest_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('path_position')) {
        this.path_position = initObj.path_position
      }
      else {
        this.path_position = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('dist_to_path')) {
        this.dist_to_path = initObj.dist_to_path
      }
      else {
        this.dist_to_path = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClosestPointPathResponse
    // Serialize message field [closest_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.closest_point, buffer, bufferOffset);
    // Serialize message field [path_position]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.path_position, buffer, bufferOffset);
    // Serialize message field [dist_to_path]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.dist_to_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClosestPointPathResponse
    let len;
    let data = new ClosestPointPathResponse(null);
    // Deserialize message field [closest_point]
    data.closest_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_position]
    data.path_position = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [dist_to_path]
    data.dist_to_path = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p4/ClosestPointPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ebc6dc89852fd036310e5b46c218952';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point closest_point
    std_msgs/Float32 path_position
    std_msgs/Float32 dist_to_path
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClosestPointPathResponse(null);
    if (msg.closest_point !== undefined) {
      resolved.closest_point = geometry_msgs.msg.Point.Resolve(msg.closest_point)
    }
    else {
      resolved.closest_point = new geometry_msgs.msg.Point()
    }

    if (msg.path_position !== undefined) {
      resolved.path_position = std_msgs.msg.Float32.Resolve(msg.path_position)
    }
    else {
      resolved.path_position = new std_msgs.msg.Float32()
    }

    if (msg.dist_to_path !== undefined) {
      resolved.dist_to_path = std_msgs.msg.Float32.Resolve(msg.dist_to_path)
    }
    else {
      resolved.dist_to_path = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = {
  Request: ClosestPointPathRequest,
  Response: ClosestPointPathResponse,
  md5sum() { return 'a4eb7978da311d6bb271e96cc9f6a8e7'; },
  datatype() { return 'p4/ClosestPointPath'; }
};
