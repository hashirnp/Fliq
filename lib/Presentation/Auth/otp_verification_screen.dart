import 'dart:developer';

import 'package:fliq/Application/Auth/auth_bloc.dart';
import 'package:fliq/Core/Constants/strings.dart';
import 'package:fliq/Core/Routes/app_routes.dart';
import 'package:fliq/Presentation/Widgets/custom_snackbar.dart';
import 'package:fliq/Presentation/Widgets/spacing.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatelessWidget {
  final String phoneNumber;

  const OtpVerificationScreen({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    final otpController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.isVerified && state.isLoggedIn) {
            Navigator.pushReplacementNamed(context, AppRoutes.inbox);
          }

          if (state.isError && state.errorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.transparent,
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(0),
                content: CustomSnackbarWidget(
                  isSuccess: false,
                  messege: state.errorMessage!,
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                // Back button
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),

                VerticalSpace(20),
                // Title
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    AppStrings.enterVerificationCode,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D0C0C),
                    ),
                  ),
                ),

                VerticalSpace(20),
                // Phone number with edit
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: RichText(
                    text: TextSpan(
                      text: phoneNumber,
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(
                          text: '  Edit',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context); // Go back to phone entry
                            },
                        ),
                      ],
                    ),
                  ),
                ),

                VerticalSpace(20),
                // OTP input
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 6,
                    controller: otpController,
                    keyboardType: TextInputType.number,
                    autoFocus: true,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 55,
                      fieldWidth: 45,
                      activeColor: Colors.black,
                      selectedColor: Colors.black,
                      inactiveColor: Colors.grey.shade400,
                    ),
                    onChanged: (value) {
                      otpController.text = value;
                    },
                  ),
                ),

                // Resend
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: Text.rich(
                    TextSpan(
                      text: AppStrings.didntGet,
                      style: TextStyle(color: Colors.black54),
                      children: [
                        TextSpan(
                          text: AppStrings.noWorries,
                          style: TextStyle(color: Colors.black54),
                        ),
                        TextSpan(
                          text: AppStrings.resent,
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),

                const Spacer(),

                // Verify Button
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      onPressed: () {
                        // Firebase OTP verify logic here
                        // Navigator.pushNamed(context, AppRoutes.inbox);
                        log(otpController.text);
                        if (otpController.text.length == 6) {
                          BlocProvider.of<AuthBloc>(context).add(
                            AuthEvent.verifytpforMobile(
                              mobileNumber: phoneNumber,
                              otp: int.parse(otpController.text),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Enter OTP Completly"),
                            ),
                          );
                        }
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFFFF5D8F), Color(0xFFFF6680)],
                          ),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: const Center(
                          child: Text(
                            'Verify',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
