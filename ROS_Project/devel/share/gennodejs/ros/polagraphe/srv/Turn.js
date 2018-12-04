// Auto-generated. Do not edit!

// (in-package polagraphe.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TurnRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Tr_L = null;
      this.Tr_R = null;
    }
    else {
      if (initObj.hasOwnProperty('Tr_L')) {
        this.Tr_L = initObj.Tr_L
      }
      else {
        this.Tr_L = 0.0;
      }
      if (initObj.hasOwnProperty('Tr_R')) {
        this.Tr_R = initObj.Tr_R
      }
      else {
        this.Tr_R = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurnRequest
    // Serialize message field [Tr_L]
    bufferOffset = _serializer.float64(obj.Tr_L, buffer, bufferOffset);
    // Serialize message field [Tr_R]
    bufferOffset = _serializer.float64(obj.Tr_R, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurnRequest
    let len;
    let data = new TurnRequest(null);
    // Deserialize message field [Tr_L]
    data.Tr_L = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Tr_R]
    data.Tr_R = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'polagraphe/TurnRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3ff8c9a1f0ae9fb7b2591e1a6263fdb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 Tr_L
    float64 Tr_R
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurnRequest(null);
    if (msg.Tr_L !== undefined) {
      resolved.Tr_L = msg.Tr_L;
    }
    else {
      resolved.Tr_L = 0.0
    }

    if (msg.Tr_R !== undefined) {
      resolved.Tr_R = msg.Tr_R;
    }
    else {
      resolved.Tr_R = 0.0
    }

    return resolved;
    }
};

class TurnResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurnResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurnResponse
    let len;
    let data = new TurnResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'polagraphe/TurnResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurnResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TurnRequest,
  Response: TurnResponse,
  md5sum() { return '169e3e5fa323f0942d122e1ff5c4046c'; },
  datatype() { return 'polagraphe/Turn'; }
};
