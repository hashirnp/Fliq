// lib/constants/api_constants.dart
class ApiConstants {
  static const String baseUrl = "https://test.myfliqapp.com/api/v1";

  static const String requestOtp =
      "/auth/registration-otp-codes/actions/phone/send-otp";

  static const String verifyOtp =
      "/auth/registration-otp-codes/actions/phone/verify-otp";

  static const String chatProfile = "/chat/chat-messages/queries/contact-users";

  static const String chatBW = "/chat/chat-messages/queries/chat-between-users";
}
