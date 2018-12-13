// Auto-generated. Do not edit!

// (in-package p1.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class DrawRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.count = null;
      this.rotate = null;
    }
    else {
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0.0;
      }
      if (initObj.hasOwnProperty('rotate')) {
        this.rotate = initObj.rotate
      }
      else {
        this.rotate = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DrawRequest
    // Serialize message field [count]
    bufferOffset = _serializer.float64(obj.count, buffer, bufferOffset);
    // Serialize message field [rotate]
    bufferOffset = _serializer.bool(obj.rotate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DrawRequest
    let len;
    let data = new DrawRequest(null);
    // Deserialize message field [count]
    data.count = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rotate]
    data.rotate = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p1/DrawRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88fab6d93a63caa50357242686459b3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 count
    bool rotate
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DrawRequest(null);
    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0.0
    }

    if (msg.rotate !== undefined) {
      resolved.rotate = msg.rotate;
    }
    else {
      resolved.rotate = false
    }

    return resolved;
    }
};

class DrawResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vel = null;
    }
    else {
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DrawResponse
    // Serialize message field [vel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DrawResponse
    let len;
    let data = new DrawResponse(null);
    // Deserialize message field [vel]
    data.vel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p1/DrawResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7232eba0461d56f6b1172de04a9957ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/Twist vel
    
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new DrawResponse(null);
    if (msg.vel !== undefined) {
      resolved.vel = geometry_msgs.msg.Twist.Resolve(msg.vel)
    }
    else {
      resolved.vel = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = {
  Request: DrawRequest,
  Response: DrawResponse,
  md5sum() { return 'd74afb0d9a5429b7e16cd23054d13ebb'; },
  datatype() { return 'p1/Draw'; }
};
