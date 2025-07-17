import 'package:fliq/Application/Auth/auth_bloc.dart';
import 'package:fliq/Core/Routes/app_routes.dart';
import 'package:fliq/Core/Constants/strings.dart';
import 'package:fliq/Presentation/Widgets/social_button.dart';
import 'package:fliq/Presentation/Widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              "assets/images/login_bg.png",
              opacity: const AlwaysStoppedAnimation(.9),
              fit: BoxFit
                  .fitHeight, // or BoxFit.fill if you don't mind distortion
            ),
          ),
          Container(color: Colors.black.withAlpha(100)),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const Spacer(flex: 1),

                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 75,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.webp'),
                      ),
                    ),
                  ),
                ),
                const VerticalSpace(10),
                Text(
                  AppStrings.connect,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                  ),
                ),
                Spacer(flex: 3),
                SocialButton(
                  icon: FontAwesomeIcons.google,
                  text: "Sign in with Google",
                  color: Colors.white,
                  textColor: Colors.black,
                  onClick: () {
                    BlocProvider.of<AuthBloc>(
                      context,
                    ).add(const AuthEvent.logInWithGoogle());
                  },
                ),
                const VerticalSpace(15),
                SocialButton(
                  icon: FontAwesomeIcons.facebookF,
                  text: "Sign in with Facebook",
                  color: Color(0xFF1877F2),
                  textColor: Colors.white,
                  onClick: () {
                    BlocProvider.of<AuthBloc>(
                      context,
                    ).add(const AuthEvent.logInWithGoogle());
                  },
                ),
                const VerticalSpace(15),
                SocialButton(
                  icon: Icons.phone,
                  text: "Sign in with phone number",
                  color: Colors.pinkAccent,
                  textColor: Colors.white,
                  onClick: () {
                    Navigator.pushNamed(context, AppRoutes.mobile);
                  },
                ),
                const VerticalSpace(15),
                // Terms and privacy
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text.rich(
                    TextSpan(
                      text: 'By signing up, you agree to our ',
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                      children: [
                        TextSpan(
                          text: 'Terms',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: '. See how we use your data in our '),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                VerticalSpace(20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
