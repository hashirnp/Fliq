import 'package:dartz/dartz.dart';
import 'package:fliq/Core/Failure/failure.dart';

abstract class AuthService {
  Future<Either<MainFailure, bool>> sendOtpforMobile({
    required String mobileNumber,
  });

  Future<Either<MainFailure, bool>> checkUserisLoggedIn();

  Future<Either<MainFailure, bool>> verifyOtpforMobile({
    required String mobileNumber,
    required int otp,
  });

  Future<Either<MainFailure, bool>> logout();
}
