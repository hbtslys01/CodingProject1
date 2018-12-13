// Auto-generated. Do not edit!

// (in-package p5.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Action {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Action
    // Serialize message field [name]
    bufferOffset = _serializer.int8(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Action
    let len;
    let data = new Action(null);
    // Deserialize message field [name]
    data.name = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'p5/Action';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '646567fa9f85aed8d6dd55ca92daef16';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 STOP = -1
    int8 SENSE = 0
    int8 MOVE1 = 1
    int8 MOVE2 = 2
    int8 MOVE3 = 3
    int8 MOVE4 = 4
    int8 MOVE5 = 5
    
    int8 name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Action(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = 0
    }

    return resolved;
    }
};

// Constants for message
Action.Constants = {
  STOP: -1,
  SENSE: 0,
  MOVE1: 1,
  MOVE2: 2,
  MOVE3: 3,
  MOVE4: 4,
  MOVE5: 5,
}

module.exports = Action;
