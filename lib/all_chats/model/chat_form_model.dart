// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ChatFormModel {
  final String lastMass;
  final String senderImage;
  final String senderName;
  final String lastMassDate;
  final bool isViewd;
  const ChatFormModel({
    required this.lastMass,
    required this.senderImage,
    required this.senderName,
    required this.lastMassDate,
    required this.isViewd,
  });

  factory ChatFormModel.init() => ChatFormModel(
    isViewd: false,
    lastMass: '',
    lastMassDate: '',
    senderImage: '',
    senderName: '',
  );

  ChatFormModel copyWith({
    String? lastMass,
    String? senderImage,
    String? senderName,
    String? lastMassDate,
    bool? isViewd,
  }) {
    return ChatFormModel(
      lastMass: lastMass ?? this.lastMass,
      senderImage: senderImage ?? this.senderImage,
      senderName: senderName ?? this.senderName,
      lastMassDate: lastMassDate ?? this.lastMassDate,
      isViewd: isViewd ?? this.isViewd,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'last_mass': lastMass,
      'sender_image': senderImage,
      'sender_name': senderName,
      'lastMass_date': lastMassDate,
      'is_viewd': isViewd,
    };
  }

  factory ChatFormModel.fromMap(Map<String, dynamic> map) {
    return ChatFormModel(
      lastMass: map['   last_mass'] as String,
      senderImage: map['sender_image'] as String,
      senderName: map[' sender_name'] as String,
      lastMassDate: map[' lastMass_date'] as String,
      isViewd: map['    is_viewd'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatFormModel.fromJson(String source) =>
      ChatFormModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
