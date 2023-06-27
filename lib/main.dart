import 'package:flutter/material.dart';
import 'package:vkontacte/screens/screen_service/screen_autologization/screen_aut.dart';
import 'package:vkontacte/screens/main_screen.dart';
import 'package:vkontacte/screens/screen_messengers/screen_serch/screen_search_user.dart';
import 'package:vkontacte/screens/screen_messengers/screen_serch/user_detalis/user_detalis_widget.dart';
import 'package:vkontacte/screens/screen_service/screen_autologization/auth_model.dart';
import 'package:vkontacte/screens/screen_service/screen_autologization/screen_registration.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => AuthProvider(model: AuthModel(),
          child: const ScreenAut()),
          '/HomeScreen': (BuildContext context) => const MainScreen(),
          '/ScreenRegistration': (BuildContext context) =>
              const ScreenRegistration(),
          '/ScreenSearchUser': (BuildContext context) => ScreenSearchUser(),
          '/UserDetailsWidget': (BuildContext context) {
             final arguments = ModalRoute.of(context)?.settings.arguments;
             if(arguments is int ) {
               return UserDetalisWidget(
                 idUser: arguments);
             } else {
               return  UserDetalisWidget(
                 idUser: 0,

            );
             }
          },
          '/ScreenSearchUser': (BuildContext context) => ScreenSearchUser(),
        });
  }
}
