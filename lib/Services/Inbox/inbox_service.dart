import 'package:dartz/dartz.dart';
import 'package:fliq/Core/Failure/failure.dart';
import 'package:fliq/Models/Chat/chat.dart';
import 'package:fliq/Models/contact/contact.dart';

abstract class InboxService {
  Future<Either<MainFailure, List<Contact>>> getContact();
  Future<Either<MainFailure, List<Chat>>> getChats({required String contactId});
}
