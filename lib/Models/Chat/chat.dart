import 'package:json_annotation/json_annotation.dart';

import 'sender.dart';

part 'chat.g.dart';

@JsonSerializable()
class Chat {
  String? type;
  String? id;
  @JsonKey(name: 'chat_thread_id')
  int? chatThreadId;
  @JsonKey(name: 'chat_message_type_id')
  int? chatMessageTypeId;
  @JsonKey(name: 'sender_id')
  int? senderId;
  @JsonKey(name: 'receiver_id')
  int? receiverId;
  String? message;
  @JsonKey(name: 'is_one_time_view')
  bool? isOneTimeView;
  @JsonKey(name: 'is_read_receipts_on')
  int? isReadReceiptsOn;
  @JsonKey(name: 'is_on_vanish_mode')
  bool? isOnVanishMode;
  @JsonKey(name: 'sent_at')
  DateTime? sentAt;
  @JsonKey(name: 'delivered_at')
  DateTime? deliveredAt;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  Sender? sender;

  Chat({
    this.type,
    this.id,
    this.chatThreadId,
    this.chatMessageTypeId,
    this.senderId,
    this.receiverId,
    this.message,
    this.isOneTimeView,
    this.isReadReceiptsOn,
    this.isOnVanishMode,
    this.sentAt,
    this.deliveredAt,
    this.createdAt,
    this.updatedAt,
    this.sender,
  });

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  Map<String, dynamic> toJson() => _$ChatToJson(this);
}
