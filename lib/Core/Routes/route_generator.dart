import 'package:fliq/Presentation/Auth/otp_verification_screen.dart';
import 'package:fliq/Presentation/Auth/phone_number_screen.dart';
import 'package:fliq/Presentation/Inbox/chat_screen.dart';
import 'package:fliq/Presentation/Inbox/inbox_screen.dart';
import 'package:fliq/Presentation/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import '../../Presentation/Auth/login_screen.dart';
import 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case AppRoutes.mobile:
        return MaterialPageRoute(builder: (_) => const PhoneNumberScreen());
      case AppRoutes.otp:
        final args = settings.arguments as Map<String, dynamic>;

        return MaterialPageRoute(
          builder: (_) =>
              OtpVerificationScreen(phoneNumber: args['phoneNumber']),
        );
      case AppRoutes.inbox:
        return MaterialPageRoute(builder: (_) => const InboxScreen());

      case AppRoutes.chat:
        final args = settings.arguments as Map<String, dynamic>;

        return MaterialPageRoute(
          builder: (_) => ChatScreen(
            contactId: args['contactId'],
            contact: args['contact'],
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
