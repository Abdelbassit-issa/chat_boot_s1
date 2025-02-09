// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';
import 'dart:typed_data';

class ChatStractur {
  final String massegeID;
  final String sendedTime;
  final String senderID;
  final String mass;
  final Uint8List file;
  ChatStractur({
    required this.massegeID,
    required this.sendedTime,
    required this.senderID,
    required this.mass,
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'massegeID': massegeID,
      'sendedTime': sendedTime,
      'senderID': senderID,
      'mass': mass,
      'file': file,
    };
  }

  factory ChatStractur.fromMap(Map<String, dynamic> map) {
    return ChatStractur(
      massegeID: map['massegeID'] as String,
      sendedTime: map['sendedTime'] as String,
      senderID: map['senderID'] as String,
      mass: map['mass'] as String,
      file:map ['file'] as Uint8List,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatStractur.fromJson(String source) =>
      ChatStractur.fromMap(json.decode(source) as Map<String, dynamic>);

  ChatStractur copyWith({
    String? massegeID,
    String? sendedTime,
    String? senderID,
    String? mass,
    Uint8List? file,
  }) {
    return ChatStractur(
      massegeID: massegeID ?? this.massegeID,
      sendedTime: sendedTime ?? this.sendedTime,
      senderID: senderID ?? this.senderID,
      mass: mass ?? this.mass,
      file: file ?? this.file,
    );
  }
}
