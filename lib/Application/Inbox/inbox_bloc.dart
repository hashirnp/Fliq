import 'package:fliq/Models/Chat/chat.dart';
import 'package:fliq/Models/contact/contact.dart';
import 'package:fliq/Services/Inbox/inbox_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'inbox_event.dart';
part 'inbox_state.dart';
part 'inbox_bloc.freezed.dart';

@injectable
class InboxBloc extends Bloc<InboxEvent, InboxState> {
  InboxService service;
  InboxBloc(this.service) : super(InboxState.initial()) {
    on<_GetContacts>((event, emit) async {
      debugPrint("Fetching inbox list");
      final result = await service.getContact();

      result.fold(
        (e) {
          return emit(InboxState.initial());
        },
        (e) {
          return emit(InboxState(contacts: e, chats: []));
        },
      );
    });

    on<_GetChatBWTwo>((event, emit) async {
      debugPrint("Fetching chats of two");
      final result = await service.getChats(contactId: event.contactId);

      result.fold(
        (e) {
          return emit(InboxState.initial());
        },
        (e) {
          return emit(state.copyWith(chats: e));
        },
      );
    });
  }
}
