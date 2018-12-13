// Auto-generated. Do not edit!

// (in-package p3.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class JacStringRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JacStringRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JacStringRequest
    let len;
    let data = new JacStringRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p3/JacStringRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JacStringRequest(null);
    return resolved;
    }
};

class JacStringResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jacobian = null;
    }
    else {
      if (initObj.hasOwnProperty('jacobian')) {
        this.jacobian = initObj.jacobian
      }
      else {
        this.jacobian = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JacStringResponse
    // Serialize message field [jacobian]
    bufferOffset = _serializer.string(obj.jacobian, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JacStringResponse
    let len;
    let data = new JacStringResponse(null);
    // Deserialize message field [jacobian]
    data.jacobian = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.jacobian.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p3/JacStringResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e10611babd37b65962dbe9c28cedb978';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string jacobian
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JacStringResponse(null);
    if (msg.jacobian !== undefined) {
      resolved.jacobian = msg.jacobian;
    }
    else {
      resolved.jacobian = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: JacStringRequest,
  Response: JacStringResponse,
  md5sum() { return 'e10611babd37b65962dbe9c28cedb978'; },
  datatype() { return 'p3/JacString'; }
};
