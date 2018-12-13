// Auto-generated. Do not edit!

// (in-package p5.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Action = require('./Action.js');
let ActionEffect = require('./ActionEffect.js');

//-----------------------------------------------------------

class ActionOption {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.effects = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = new Action();
      }
      if (initObj.hasOwnProperty('effects')) {
        this.effects = initObj.effects
      }
      else {
        this.effects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionOption
    // Serialize message field [action]
    bufferOffset = Action.serialize(obj.action, buffer, bufferOffset);
    // Serialize message field [effects]
    // Serialize the length for message field [effects]
    bufferOffset = _serializer.uint32(obj.effects.length, buffer, bufferOffset);
    obj.effects.forEach((val) => {
      bufferOffset = ActionEffect.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionOption
    let len;
    let data = new ActionOption(null);
    // Deserialize message field [action]
    data.action = Action.deserialize(buffer, bufferOffset);
    // Deserialize message field [effects]
    // Deserialize array length for message field [effects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.effects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.effects[i] = ActionEffect.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 57 * object.effects.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'p5/ActionOption';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b85ff8a461d87e8dfc582b2fca18bd96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Action action		# The action can cause any one of the effects
    ActionEffect[] effects
    
    ================================================================================
    MSG: p5/Action
    int8 STOP = -1
    int8 SENSE = 0
    int8 MOVE1 = 1
    int8 MOVE2 = 2
    int8 MOVE3 = 3
    int8 MOVE4 = 4
    int8 MOVE5 = 5
    
    int8 name
    
    ================================================================================
    MSG: p5/ActionEffect
    State next_state	# the state this action is transitioning to
    float64 probability	# the probability of that transition occurring in this state
    float64 reward		# the reward resulting from this transition
    
    ================================================================================
    MSG: p5/State
    int8 location
    float64[5] distribution
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActionOption(null);
    if (msg.action !== undefined) {
      resolved.action = Action.Resolve(msg.action)
    }
    else {
      resolved.action = new Action()
    }

    if (msg.effects !== undefined) {
      resolved.effects = new Array(msg.effects.length);
      for (let i = 0; i < resolved.effects.length; ++i) {
        resolved.effects[i] = ActionEffect.Resolve(msg.effects[i]);
      }
    }
    else {
      resolved.effects = []
    }

    return resolved;
    }
};

module.exports = ActionOption;
