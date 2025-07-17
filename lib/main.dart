import 'package:fliq/Application/Auth/auth_bloc.dart';
import 'package:fliq/Application/Inbox/inbox_bloc.dart';
import 'package:fliq/Core/Routes/app_routes.dart';
import 'package:fliq/Core/Routes/route_generator.dart';
import 'package:fliq/Core/di/injectable.dart';
import 'package:fliq/Core/storage/jwt_token_storage.dart';
import 'package:fliq/Core/storage/shared_prefs_helper.dart';
import 'package:fliq/Presentation/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final jwtPrefs = JwtPrefsHelper();
  await jwtPrefs.init();

  final prefs = SharedPrefsHelper();
  await prefs.init();

  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<AuthBloc>()),
        BlocProvider(create: (ctx) => getIt<InboxBloc>()),
      ],
      child: MaterialApp(
        title: 'Fliq Dating',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,

          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            surface: Colors.white,
          ),
          textTheme: GoogleFonts.jostTextTheme(),
        ),
        initialRoute: AppRoutes.splash,
        onGenerateRoute: RouteGenerator.generateRoute,
        home: SplashScreen(),
      ),
    );
  }
}
