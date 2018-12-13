// Auto-generated. Do not edit!

// (in-package p3.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointAngles = require('../msg/JointAngles.js');

//-----------------------------------------------------------

let PointArray = require('../msg/PointArray.js');

//-----------------------------------------------------------

class Problem1Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angles = null;
    }
    else {
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = new JointAngles();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Problem1Request
    // Serialize message field [angles]
    bufferOffset = JointAngles.serialize(obj.angles, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Problem1Request
    let len;
    let data = new Problem1Request(null);
    // Deserialize message field [angles]
    data.angles = JointAngles.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p3/Problem1Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9bdd08346a6a9968cc9c423de3cdfb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    JointAngles angles
    
    ================================================================================
    MSG: p3/JointAngles
    float64[5] angles
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Problem1Request(null);
    if (msg.angles !== undefined) {
      resolved.angles = JointAngles.Resolve(msg.angles)
    }
    else {
      resolved.angles = new JointAngles()
    }

    return resolved;
    }
};

class Problem1Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = new PointArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Problem1Response
    // Serialize message field [points]
    bufferOffset = PointArray.serialize(obj.points, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Problem1Response
    let len;
    let data = new Problem1Response(null);
    // Deserialize message field [points]
    data.points = PointArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PointArray.getMessageSize(object.points);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p3/Problem1Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7b43fb4c3dc044f1ecb1f843f952947';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PointArray points
    
    
    ================================================================================
    MSG: p3/PointArray
    geometry_msgs/Point[] points
    
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
    const resolved = new Problem1Response(null);
    if (msg.points !== undefined) {
      resolved.points = PointArray.Resolve(msg.points)
    }
    else {
      resolved.points = new PointArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: Problem1Request,
  Response: Problem1Response,
  md5sum() { return '0f43d6b0b523860f6489ab1d8e5a3c26'; },
  datatype() { return 'p3/Problem1'; }
};
