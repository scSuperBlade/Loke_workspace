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

class RfidInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.card_type = null;
      this.card_idx = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('card_type')) {
        this.card_type = initObj.card_type
      }
      else {
        this.card_type = 0;
      }
      if (initObj.hasOwnProperty('card_idx')) {
        this.card_idx = initObj.card_idx
      }
      else {
        this.card_idx = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RfidInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [card_type]
    bufferOffset = _serializer.int16(obj.card_type, buffer, bufferOffset);
    // Serialize message field [card_idx]
    bufferOffset = _serializer.int16(obj.card_idx, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RfidInfo
    let len;
    let data = new RfidInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [card_type]
    data.card_type = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [card_idx]
    data.card_idx = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'messages/RfidInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6068fcf6be5654b67a554d35cb390a35';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    #rfid card type: if type = 11, card is ICRA buff card
    int16 card_type
    
    #rfid card index
    int16 card_idx
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
    const resolved = new RfidInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.card_type !== undefined) {
      resolved.card_type = msg.card_type;
    }
    else {
      resolved.card_type = 0
    }

    if (msg.card_idx !== undefined) {
      resolved.card_idx = msg.card_idx;
    }
    else {
      resolved.card_idx = 0
    }

    return resolved;
    }
};

module.exports = RfidInfo;
