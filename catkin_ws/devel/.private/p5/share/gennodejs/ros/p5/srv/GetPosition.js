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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetPositionRequest {
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
    // Serializes a message object of type GetPositionRequest
    // Serialize message field [block_id]
    bufferOffset = _serializer.int8(obj.block_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPositionRequest
    let len;
    let data = new GetPositionRequest(null);
    // Deserialize message field [block_id]
    data.block_id = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/GetPositionRequest';
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
    const resolved = new GetPositionRequest(null);
    if (msg.block_id !== undefined) {
      resolved.block_id = msg.block_id;
    }
    else {
      resolved.block_id = 0
    }

    return resolved;
    }
};

class GetPositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.loc = null;
    }
    else {
      if (initObj.hasOwnProperty('loc')) {
        this.loc = initObj.loc
      }
      else {
        this.loc = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPositionResponse
    // Serialize message field [loc]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.loc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPositionResponse
    let len;
    let data = new GetPositionResponse(null);
    // Deserialize message field [loc]
    data.loc = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/GetPositionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb0dc5489379f237f7e1998a10d754a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point loc
    
    
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
    const resolved = new GetPositionResponse(null);
    if (msg.loc !== undefined) {
      resolved.loc = geometry_msgs.msg.Point.Resolve(msg.loc)
    }
    else {
      resolved.loc = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPositionRequest,
  Response: GetPositionResponse,
  md5sum() { return '0825ed03ec91bc18995b0b869f5989a9'; },
  datatype() { return 'p5/GetPosition'; }
};
