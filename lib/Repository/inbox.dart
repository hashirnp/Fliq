import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fliq/Core/Constants/api_constants.dart';
import 'package:fliq/Core/Failure/failure.dart';
import 'package:fliq/Core/storage/jwt_token_storage.dart';
import 'package:fliq/Core/storage/shared_prefs_helper.dart';
import 'package:fliq/Models/Chat/chat.dart';
import 'package:fliq/Models/contact/contact.dart';
import 'package:fliq/Services/Inbox/inbox_service.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:japx/japx.dart';

@LazySingleton(as: InboxService)
class Inboxepository extends InboxService {
  @override
  Future<Either<MainFailure, List<Contact>>> getContact() async {
    try {
      final url = Uri.parse(
        '${ApiConstants.baseUrl}${ApiConstants.chatProfile}',
      );

      final jwtPrefs = JwtPrefsHelper();
      final token = jwtPrefs.getJwtToken();

      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/vnd.api+json',
          'Accept': 'application/vnd.api+json',
          'Authorization': 'Bearer $token',
        },
      );

      log('Response Status: ${response.statusCode}');
      log('Response Body: ${response.body}');
      final body = jsonDecode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final decoded = Japx.decode(body);

        final List<dynamic> dataList = decoded['data'];

        final List<Contact> list = dataList
            .map((e) => Contact.fromJson(e))
            .toList();

        return Right(list);
      } else {
        return Left(MainFailure.serverFailure(msg: body['error']['message']));
      }
    } catch (e) {
      return Left(
        MainFailure.serverFailure(
          msg: "Something wrong please try again later",
        ),
      );
    }
  }

  @override
  Future<Either<MainFailure, List<Chat>>> getChats({
    required String contactId,
  }) async {
    try {
      final jwtPrefs = JwtPrefsHelper();
      final prefs = SharedPrefsHelper();

      //face an issue on api endpoints,

      //comment below line when checking, if api isn't working fine
      final url = Uri.parse(
        '${ApiConstants.baseUrl}${ApiConstants.chatBW}/$contactId/${prefs.getUserId()}',
      );

      // remove comment of below lines
      // final url = Uri.parse(
      //   '${ApiConstants.baseUrl}${ApiConstants.chatBW}/106/189}',
      // );

      final token = jwtPrefs.getJwtToken();

      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/vnd.api+json',
          'Accept': 'application/vnd.api+json',
          'Authorization': 'Bearer $token',
        },
      );

      log('Response Status: ${response.statusCode}');
      final body = jsonDecode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final decoded = Japx.decode(body);
        final List<dynamic> dataList = decoded['data'];

        final List<Chat> list = dataList.map((e) => Chat.fromJson(e)).toList();

        return Right(list);
      } else {
        return Left(MainFailure.serverFailure(msg: body['error']['message']));
      }
    } catch (e, stack) {
      log("Error on Fetching Chat : $e");
      log('StackTrace: $stack');
      return Left(
        MainFailure.serverFailure(
          msg: "Something wrong please try again later",
        ),
      );
    }
  }
}
