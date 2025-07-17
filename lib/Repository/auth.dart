import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fliq/Core/Constants/api_constants.dart';
import 'package:fliq/Core/Failure/failure.dart';
import 'package:fliq/Core/storage/jwt_token_storage.dart';
import 'package:fliq/Core/storage/shared_prefs_helper.dart';
import 'package:fliq/Core/utils/device_info_helper.dart';
import 'package:fliq/Services/Auth/auth_service.dart';
import 'package:fliq/Models/User/user.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:japx/japx.dart';

@LazySingleton(as: AuthService)
class AuthRepository extends AuthService {
  @override
  Future<Either<MainFailure, bool>> sendOtpforMobile({
    required String mobileNumber,
  }) async {
    try {
      final url = Uri.parse(
        '${ApiConstants.baseUrl}${ApiConstants.requestOtp}',
      );

      final requestBody = {
        "data": {
          "type": "registration_otp_codes",
          "attributes": {"phone": mobileNumber},
        },
      };

      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/vnd.api+json',
          'Accept': 'application/vnd.api+json',
        },
        body: jsonEncode(requestBody),
      );

      log('Response Status: ${response.statusCode}');
      log('Response Body: ${response.body}');
      final decoded = jsonDecode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return decoded['status'] == true
            ? Right(true)
            : Left(MainFailure.serverFailure(msg: decoded['error']['message']));
      } else {
        return Left(
          MainFailure.serverFailure(msg: decoded['error']['message']),
        );
      }
    } catch (e, stack) {
      log('OTP Error: $e');
      log('StackTrace: $stack');
      return const Left(MainFailure.serverFailure(msg: 'Sever Error'));
    }
  }

  @override
  Future<Either<MainFailure, bool>> verifyOtpforMobile({
    required String mobileNumber,
    required int otp,
  }) async {
    try {
      final url = Uri.parse('${ApiConstants.baseUrl}${ApiConstants.verifyOtp}');

      final deviceMeta = await getDeviceMeta();

      final requestBody = {
        "data": {
          "type": "registration_otp_codes",
          "attributes": {
            "phone": mobileNumber,
            "otp": otp,
            "device_meta": deviceMeta, // not encoded
          },
        },
      };

      log(jsonEncode(requestBody));

      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/vnd.api+json',
          'Accept': 'application/vnd.api+json',
        },
        body: jsonEncode(requestBody),
      );

      log('Response Status: ${response.statusCode}');
      log('Response Body: ${response.body}');
      final decoded = jsonDecode(response.body);

      final decodedJapx = Japx.decode(decoded);

      final user = User.fromJson(decodedJapx);

      final jwtPrefs = JwtPrefsHelper();
      final prefs = SharedPrefsHelper();

      //store user id
      await prefs.saveUserId(user.data!.id!);

      //store jwt token
      await jwtPrefs.saveJwtToken(user.data!.authStatus!.accessToken!);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(true);
      } else {
        return Left(
          MainFailure.serverFailure(msg: decoded['error']['message']),
        );
      }
    } catch (e, stack) {
      log('OTP Error: $e');
      log('StackTrace: $stack');
      return const Left(MainFailure.serverFailure(msg: 'Sever Error'));
    }
  }

  @override
  Future<Either<MainFailure, bool>> checkUserisLoggedIn() async {
    final prefs = JwtPrefsHelper();

    final token = prefs.getJwtToken();

    if (token != null) {
      return Right(true);
    }

    return Left(MainFailure.clientFailure(msg: "User is Not LoggedIn"));
  }

  @override
  Future<Either<MainFailure, bool>> logout() async {
    final jwtPrefs = JwtPrefsHelper();
    jwtPrefs.clearToken();

    final prefs = SharedPrefsHelper();
    prefs.clearUserId();

    return Right(true);
  }
}
