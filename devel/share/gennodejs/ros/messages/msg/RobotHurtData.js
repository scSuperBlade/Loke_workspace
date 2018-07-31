// Auto-generated. Do not edit!

// (in-package messages.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RobotHurtData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.armor_type = null;
      this.hurt_type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('armor_type')) {
        this.armor_type = initObj.armor_type
      }
      else {
        this.armor_type = 0;
      }
      if (initObj.hasOwnProperty('hurt_type')) {
        this.hurt_type = initObj.hurt_type
      }
      else {
        this.hurt_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotHurtData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [armor_type]
    bufferOffset = _serializer.int16(obj.armor_type, buffer, bufferOffset);
    // Serialize message field [hurt_type]
    bufferOffset = _serializer.int16(obj.hurt_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotHurtData
    let len;
    let data = new RobotHurtData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [armor_type]
    data.armor_type = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [hurt_type]
    data.hurt_type = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'messages/RobotHurtData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '802a8244ba552af5959fc38d50ee9b26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int16 armor_type
    int16 hurt_type
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotHurtData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.armor_type !== undefined) {
      resolved.armor_type = msg.armor_type;
    }
    else {
      resolved.armor_type = 0
    }

    if (msg.hurt_type !== undefined) {
      resolved.hurt_type = msg.hurt_type;
    }
    else {
      resolved.hurt_type = 0
    }

    return resolved;
    }
};

module.exports = RobotHurtData;
