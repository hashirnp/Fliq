part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logInWithGoogle() = _LogInWithGoogle;
  const factory AuthEvent.logInWithFaceBook() = _LogInWithFaceBook;
  const factory AuthEvent.sendOtpforMobile({required String mobileNumber}) =
      _SendOtpforMobile;
  const factory AuthEvent.verifytpforMobile({
    required String mobileNumber,
    required int otp,
  }) = _VerifytpforMobile;

  const factory AuthEvent.checkLoggedIn() = _CheckLoggedIn;
  const factory AuthEvent.logout() = _Logout;
}
