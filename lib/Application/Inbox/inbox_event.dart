part of 'inbox_bloc.dart';

@freezed
abstract class InboxEvent with _$InboxEvent {
  const factory InboxEvent.getContacts() = _GetContacts;
  const factory InboxEvent.getChatBWtwo({required String contactId}) =
      _GetChatBWTwo;
}
