import 'package:airplane_travel/cubit/auth_cubit.dart';
import 'package:airplane_travel/cubit/destination_cubit.dart';
import 'package:airplane_travel/cubit/page_cubit.dart';
import 'package:airplane_travel/ui/pages/bonus_page.dart';
import 'package:airplane_travel/ui/pages/get_started_pages.dart';
import 'package:airplane_travel/ui/pages/main_page.dart';
import 'package:airplane_travel/ui/pages/sign_in_page.dart';
import 'package:airplane_travel/ui/pages/sign_up_page.dart';
import 'package:airplane_travel/ui/pages/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => DestinationCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/getStarted': (context) => GetStartedPage(),
          '/signUp': (context) => SignUpPage(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
          '/signIn': (context) => SignInPage(),
        },
      ),
    );
  }
}
