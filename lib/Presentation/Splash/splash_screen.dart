import 'package:fliq/Application/Auth/auth_bloc.dart';
import 'package:fliq/Core/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<AuthBloc>(context).add(const AuthEvent.checkLoggedIn());
    });
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.isVerified && state.isLoggedIn) {
            Navigator.of(context).pushReplacementNamed(AppRoutes.inbox);
          } else {
            Navigator.of(context).pushReplacementNamed(AppRoutes.login);
          }
        },
        child: Center(
          child: Hero(
            tag: 'logo',
            child: Image.asset("assets/images/logo.webp", height: 100),
          ),
        ),
      ),
    );
  }
}
