part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool isError,
    required bool isOtpSentForPhone,
    required bool isOtpSentForEmail,
    required bool isVerified,
    required bool isLoggedIn,
    required String? phoneNumber,
    required String? email,
    required String? userId,
    String? errorMessage,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
    isLoading: false,
    isError: false,
    isOtpSentForPhone: false,
    isOtpSentForEmail: false,
    isVerified: false,
    isLoggedIn: false,
    phoneNumber: null,
    email: null,
    errorMessage: null,
    userId: null,
  );
}
