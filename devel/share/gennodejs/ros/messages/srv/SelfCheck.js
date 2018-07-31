// Auto-generated. Do not edit!

// (in-package messages.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SelfCheckRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.self_check = null;
    }
    else {
      if (initObj.hasOwnProperty('self_check')) {
        this.self_check = initObj.self_check
      }
      else {
        this.self_check = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SelfCheckRequest
    // Serialize message field [self_check]
    bufferOffset = _serializer.bool(obj.self_check, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SelfCheckRequest
    let len;
    let data = new SelfCheckRequest(null);
    // Deserialize message field [self_check]
    data.self_check = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'messages/SelfCheckRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00c9efa0aab569c1baff878b410bae3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool self_check
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SelfCheckRequest(null);
    if (msg.self_check !== undefined) {
      resolved.self_check = msg.self_check;
    }
    else {
      resolved.self_check = false
    }

    return resolved;
    }
};

class SelfCheckResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.passed = null;
    }
    else {
      if (initObj.hasOwnProperty('passed')) {
        this.passed = initObj.passed
      }
      else {
        this.passed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SelfCheckResponse
    // Serialize message field [passed]
    bufferOffset = _serializer.bool(obj.passed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SelfCheckResponse
    let len;
    let data = new SelfCheckResponse(null);
    // Deserialize message field [passed]
    data.passed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'messages/SelfCheckResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18e896fced617e691ee2fff3736d1110';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool passed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SelfCheckResponse(null);
    if (msg.passed !== undefined) {
      resolved.passed = msg.passed;
    }
    else {
      resolved.passed = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SelfCheckRequest,
  Response: SelfCheckResponse,
  md5sum() { return '5c04cbf50c5ba1fa89ec40383208e121'; },
  datatype() { return 'messages/SelfCheck'; }
};
