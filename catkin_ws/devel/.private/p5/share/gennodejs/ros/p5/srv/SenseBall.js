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

class SenseBallRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prior = null;
    }
    else {
      if (initObj.hasOwnProperty('prior')) {
        this.prior = initObj.prior
      }
      else {
        this.prior = new Array(5).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SenseBallRequest
    // Check that the constant length array field [prior] has the right length
    if (obj.prior.length !== 5) {
      throw new Error('Unable to serialize array field prior - length must be 5')
    }
    // Serialize message field [prior]
    bufferOffset = _arraySerializer.float64(obj.prior, buffer, bufferOffset, 5);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SenseBallRequest
    let len;
    let data = new SenseBallRequest(null);
    // Deserialize message field [prior]
    data.prior = _arrayDeserializer.float64(buffer, bufferOffset, 5)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/SenseBallRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7444b4a4f36af2b873aa897e7383d0f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[5] prior
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SenseBallRequest(null);
    if (msg.prior !== undefined) {
      resolved.prior = msg.prior;
    }
    else {
      resolved.prior = new Array(5).fill(0)
    }

    return resolved;
    }
};

class SenseBallResponse {
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
    // Serializes a message object of type SenseBallResponse
    // Check that the constant length array field [distribution] has the right length
    if (obj.distribution.length !== 5) {
      throw new Error('Unable to serialize array field distribution - length must be 5')
    }
    // Serialize message field [distribution]
    bufferOffset = _arraySerializer.float64(obj.distribution, buffer, bufferOffset, 5);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SenseBallResponse
    let len;
    let data = new SenseBallResponse(null);
    // Deserialize message field [distribution]
    data.distribution = _arrayDeserializer.float64(buffer, bufferOffset, 5)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'p5/SenseBallResponse';
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
    const resolved = new SenseBallResponse(null);
    if (msg.distribution !== undefined) {
      resolved.distribution = msg.distribution;
    }
    else {
      resolved.distribution = new Array(5).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: SenseBallRequest,
  Response: SenseBallResponse,
  md5sum() { return '8ce6ebce87f7bc56c55f1869e06cebba'; },
  datatype() { return 'p5/SenseBall'; }
};
