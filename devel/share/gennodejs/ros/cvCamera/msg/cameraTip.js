// Auto-generated. Do not edit!

// (in-package cvCamera.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class cameraTip {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_info = null;
      this.camera_check = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_info')) {
        this.camera_info = initObj.camera_info
      }
      else {
        this.camera_info = 0;
      }
      if (initObj.hasOwnProperty('camera_check')) {
        this.camera_check = initObj.camera_check
      }
      else {
        this.camera_check = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cameraTip
    // Serialize message field [camera_info]
    bufferOffset = _serializer.int16(obj.camera_info, buffer, bufferOffset);
    // Serialize message field [camera_check]
    bufferOffset = _serializer.bool(obj.camera_check, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cameraTip
    let len;
    let data = new cameraTip(null);
    // Deserialize message field [camera_info]
    data.camera_info = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [camera_check]
    data.camera_check = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cvCamera/cameraTip';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79b4799b7c29d94aabd168ac1a8c0042';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # 0: left 1: right
    int16 camera_info
    bool camera_check
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cameraTip(null);
    if (msg.camera_info !== undefined) {
      resolved.camera_info = msg.camera_info;
    }
    else {
      resolved.camera_info = 0
    }

    if (msg.camera_check !== undefined) {
      resolved.camera_check = msg.camera_check;
    }
    else {
      resolved.camera_check = false
    }

    return resolved;
    }
};

module.exports = cameraTip;
