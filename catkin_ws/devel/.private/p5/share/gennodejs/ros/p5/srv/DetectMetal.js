// Auto-generated. Do not edit!

// (in-package p5.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DetectMetalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.block_id = null;
    }
    else {
      if (initObj.hasOwnProperty('block_id')) {
        this.block_id = initObj.block_id
      }
      else {
        this.block_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectMetalRequest
    // Serialize message field [block_id]
    bufferOffset = _serializer.int8(obj.block_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectMetalRequest
    let len;
    let data = new DetectMetalRequest(null);
    // Deserialize message field [block_id]
    data.block_id = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/DetectMetalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd350dc340e1075c9504d73bb4f66e267';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 block_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectMetalRequest(null);
    if (msg.block_id !== undefined) {
      resolved.block_id = msg.block_id;
    }
    else {
      resolved.block_id = 0
    }

    return resolved;
    }
};

class DetectMetalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.has_metal = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('has_metal')) {
        this.has_metal = initObj.has_metal
      }
      else {
        this.has_metal = false;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectMetalResponse
    // Serialize message field [has_metal]
    bufferOffset = _serializer.bool(obj.has_metal, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectMetalResponse
    let len;
    let data = new DetectMetalResponse(null);
    // Deserialize message field [has_metal]
    data.has_metal = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/DetectMetalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e9e798cf7e51dd17cb11ccb5e6ef8f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool has_metal
    float64 distance
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectMetalResponse(null);
    if (msg.has_metal !== undefined) {
      resolved.has_metal = msg.has_metal;
    }
    else {
      resolved.has_metal = false
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: DetectMetalRequest,
  Response: DetectMetalResponse,
  md5sum() { return '2431cf74dff95a94498ba287cb39d5a3'; },
  datatype() { return 'p5/DetectMetal'; }
};
