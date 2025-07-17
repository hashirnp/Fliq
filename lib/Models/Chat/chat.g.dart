// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chat _$ChatFromJson(Map<String, dynamic> json) => Chat(
  type: json['type'] as String?,
  id: json['id'] as String?,
  chatThreadId: (json['chat_thread_id'] as num?)?.toInt(),
  chatMessageTypeId: (json['chat_message_type_id'] as num?)?.toInt(),
  senderId: (json['sender_id'] as num?)?.toInt(),
  receiverId: (json['receiver_id'] as num?)?.toInt(),
  message: json['message'] as String?,
  isOneTimeView: json['is_one_time_view'] as bool?,
  isReadReceiptsOn: (json['is_read_receipts_on'] as num?)?.toInt(),
  isOnVanishMode: json['is_on_vanish_mode'] as bool?,
  sentAt: json['sent_at'] == null
      ? null
      : DateTime.parse(json['sent_at'] as String),
  deliveredAt: json['delivered_at'] == null
      ? null
      : DateTime.parse(json['delivered_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  sender: json['sender'] == null
      ? null
      : Sender.fromJson(json['sender'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChatToJson(Chat instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'chat_thread_id': instance.chatThreadId,
  'chat_message_type_id': instance.chatMessageTypeId,
  'sender_id': instance.senderId,
  'receiver_id': instance.receiverId,
  'message': instance.message,
  'is_one_time_view': instance.isOneTimeView,
  'is_read_receipts_on': instance.isReadReceiptsOn,
  'is_on_vanish_mode': instance.isOnVanishMode,
  'sent_at': instance.sentAt?.toIso8601String(),
  'delivered_at': instance.deliveredAt?.toIso8601String(),
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'sender': instance.sender,
};
