import 'package:fliq/Services/Auth/auth_service.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthService service;
  AuthBloc(this.service) : super(AuthState.initial()) {
    on<_CheckLoggedIn>((event, emit) async {
      debugPrint("Checking user is logged in or not");

      // Optional delay if you want a splash/loading pause
      await Future.delayed(const Duration(seconds: 3));

      final result = await service.checkUserisLoggedIn();

      result.fold(
        (e) {
          emit(
            AuthState(
              isLoading: false,
              isError: true,
              isOtpSentForPhone: false,
              isOtpSentForEmail: false,
              isVerified: false,
              isLoggedIn: false,
              phoneNumber: null,
              email: null,
              userId: null,
              errorMessage: e.msg,
            ),
          );
        },
        (user) {
          emit(
            AuthState(
              isLoading: false,
              isError: false,
              isOtpSentForPhone: false,
              isOtpSentForEmail: false,
              isVerified: true,
              isLoggedIn: true,
              phoneNumber: null,
              email: null,
              userId: null,
            ),
          );
        },
      );
    });

    on<_LogInWithGoogle>((event, emit) {
      // Login With Google
      debugPrint("Login Attempt with Google");
    });

    on<_LogInWithFaceBook>((event, emit) {
      // Login with FB
      debugPrint("Login Attempt with FaceBook");
    });

    on<_SendOtpforMobile>((event, emit) async {
      // Login wiht mobile
      emit(AuthState.initial());
      debugPrint("Login Attempt with Mobile");
      final result = await service.sendOtpforMobile(
        mobileNumber: event.mobileNumber,
      );

      result.fold(
        (e) {
          return emit(
            AuthState(
              isLoading: false,
              isError: true,
              isOtpSentForPhone: false,
              isOtpSentForEmail: false,
              isVerified: false,
              isLoggedIn: false,
              phoneNumber: event.mobileNumber,
              email: null,
              userId: null,
              errorMessage: e.msg,
            ),
          );
        },
        ((e) {
          return emit(
            AuthState(
              isLoading: false,
              isError: false,
              isOtpSentForPhone: true,
              isOtpSentForEmail: false,
              isVerified: false,
              isLoggedIn: false,
              phoneNumber: event.mobileNumber,
              email: null,
              userId: null,
              errorMessage: null,
            ),
          );
        }),
      );
    });

    on<_VerifytpforMobile>((event, emit) async {
      debugPrint("OTP Verification Attempt with Mobile");
      final result = await service.verifyOtpforMobile(
        mobileNumber: event.mobileNumber,
        otp: event.otp,
      );

      result.fold(
        (e) {
          return emit(
            AuthState(
              isLoading: false,
              isError: true,
              isOtpSentForPhone: false,
              isOtpSentForEmail: false,
              isVerified: false,
              isLoggedIn: false,
              phoneNumber: event.mobileNumber,
              email: null,
              userId: null,
              errorMessage: e.msg,
            ),
          );
        },
        ((e) {
          return emit(
            AuthState(
              isLoading: false,
              isError: false,
              isOtpSentForPhone: false,
              isOtpSentForEmail: false,
              isVerified: true,
              isLoggedIn: true,
              phoneNumber: event.mobileNumber,
              email: null,
              userId: null,
              errorMessage: null,
            ),
          );
        }),
      );
    });

    on<_Logout>((event, emit) async {
      debugPrint("user loggin out :)");
      // For Checking Purpoose directly sending to login screen
      final result = await service.logout();

      result.fold(
        (e) => emit(AuthState.initial()),
        (e) => emit(AuthState.initial()),
      );
    });
  }
}
