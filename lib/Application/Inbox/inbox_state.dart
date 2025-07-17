part of 'inbox_bloc.dart';

@freezed
abstract class InboxState with _$InboxState {
  const factory InboxState({
    required List<Contact>? contacts,
    required List<Chat>? chats,
  }) = _Initial;

  factory InboxState.initial() => const InboxState(contacts: [], chats: []);
}
