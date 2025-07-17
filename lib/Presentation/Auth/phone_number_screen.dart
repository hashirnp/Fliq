import 'package:fliq/Application/Auth/auth_bloc.dart';
import 'package:fliq/Core/Constants/strings.dart';
import 'package:fliq/Core/Routes/app_routes.dart';
import 'package:fliq/Presentation/Widgets/custom_snackbar.dart';
import 'package:fliq/Presentation/Widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final phoneController = TextEditingController();
  final key = GlobalKey<FormState>();
  String phoneNumber = '';
  int countryCodeLength = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
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
          if (state.isOtpSentForPhone) {
            Navigator.pushNamed(
              context,
              AppRoutes.otp,
              arguments: {'phoneNumber': phoneNumber},
            );
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Form(
              key: key,
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
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),

                  VerticalSpace(20),

                  // Title
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      AppStrings.enterPhoneNumber,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D0C0C),
                      ),
                    ),
                  ),

                  VerticalSpace(30),

                  // Phone number field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: IntlPhoneField(
                      controller: phoneController,
                      initialCountryCode: 'IN',
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone_android),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(),
                        ),
                        hintText: '8080808080',
                      ),
                      validator: (val) {
                        if (val == null || val.number.trim().isEmpty) {
                          return 'Please enter your phone number';
                        }

                        if (val.number.trim().length != 10) {
                          return 'Indian number must be 10 digits';
                        }

                        return null;
                      },
                      onCountryChanged: (country) {
                        countryCodeLength = country.maxLength;
                      },
                      onChanged: (phone) {
                        phoneNumber = phone.completeNumber;
                      },
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    child: Text(
                      AppStrings.sendCodeInfo,
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),

                  const Spacer(),

                  // NEXT Button
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: EdgeInsets.zero,
                          elevation: 0,
                        ),
                        onPressed: () {
                          if (phoneController.text.length ==
                              countryCodeLength) {
                            // Proceed to OTP screen
                            BlocProvider.of<AuthBloc>(
                              context,
                              listen: false,
                            ).add(
                              AuthEvent.sendOtpforMobile(
                                mobileNumber: phoneNumber,
                              ),
                            );
                          }
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            gradient: const LinearGradient(
                              colors: [Color(0xFFFF5D8F), Color(0xFFFF6680)],
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
