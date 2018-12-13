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

class ComputeEntropyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distribution = null;
    }
    else {
      if (initObj.hasOwnProperty('distribution')) {
        this.distribution = initObj.distribution
      }
      else {
        this.distribution = new Array(5).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputeEntropyRequest
    // Check that the constant length array field [distribution] has the right length
    if (obj.distribution.length !== 5) {
      throw new Error('Unable to serialize array field distribution - length must be 5')
    }
    // Serialize message field [distribution]
    bufferOffset = _arraySerializer.float64(obj.distribution, buffer, bufferOffset, 5);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeEntropyRequest
    let len;
    let data = new ComputeEntropyRequest(null);
    // Deserialize message field [distribution]
    data.distribution = _arrayDeserializer.float64(buffer, bufferOffset, 5)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/ComputeEntropyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d0b9b01cbf7a806a1b65f8eedcd1a6b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[5] distribution
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ComputeEntropyRequest(null);
    if (msg.distribution !== undefined) {
      resolved.distribution = msg.distribution;
    }
    else {
      resolved.distribution = new Array(5).fill(0)
    }

    return resolved;
    }
};

class ComputeEntropyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.entropy = null;
    }
    else {
      if (initObj.hasOwnProperty('entropy')) {
        this.entropy = initObj.entropy
      }
      else {
        this.entropy = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputeEntropyResponse
    // Serialize message field [entropy]
    bufferOffset = _serializer.float64(obj.entropy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeEntropyResponse
    let len;
    let data = new ComputeEntropyResponse(null);
    // Deserialize message field [entropy]
    data.entropy = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/ComputeEntropyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '121460cf752459254f4bedb53b306675';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 entropy
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ComputeEntropyResponse(null);
    if (msg.entropy !== undefined) {
      resolved.entropy = msg.entropy;
    }
    else {
      resolved.entropy = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: ComputeEntropyRequest,
  Response: ComputeEntropyResponse,
  md5sum() { return '684ca74828f5f8845f5e461f587028b2'; },
  datatype() { return 'p5/ComputeEntropy'; }
};
