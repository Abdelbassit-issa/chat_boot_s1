// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';
import 'dart:typed_data';

import 'package:chat_boot_s1/chat_box/model/chat_stractur.dart';

class ChatBoxModel {
  final String userProfile;
  final String userNmae;
  final String lastView;
  final String userID;
  final String chatID;
  final Uint8List userImage;
  final List<ChatStractur> masseges;
  ChatBoxModel({
    required this.userProfile,
    required this.userNmae,
    required this.lastView,
    required this.userID,
    required this.chatID,
    required this.userImage,
    required this.masseges,
  });

  ChatBoxModel copyWith({
    String? userProfile,
    String? userNmae,
    String? lastView,
    String? userID,
    String? chatID,
    Uint8List? userImage,
    List<ChatStractur>? masseges,
  }) {
    return ChatBoxModel(
      userProfile: userProfile ?? this.userProfile,
      userNmae: userNmae ?? this.userNmae,
      lastView: lastView ?? this.lastView,
      userID: userID ?? this.userID,
      chatID: chatID ?? this.chatID,
      userImage: userImage ?? this.userImage,
      masseges: masseges ?? this.masseges,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userProfile': userProfile,
      'userNmae': userNmae,
      'lastView': lastView,
      'userID': userID,
      'chatID': chatID,
      'userImage': userImage,
      'masseges': masseges,
    };
  }

  factory ChatBoxModel.fromMap(Map<String, dynamic> map) {
    return ChatBoxModel(
      userProfile: map['userProfile'] as String,
      userNmae: map['userNmae'] as String,
      lastView: map['lastView'] as String,
      userID: map['userID'] as String,
      chatID: map['chatID'] as String,
      masseges: map['masseges'] as List<ChatStractur>,
      userImage: map['userImage'] as Uint8List,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatBoxModel.fromJson(String source) =>
      ChatBoxModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
