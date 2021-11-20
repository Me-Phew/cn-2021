import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'home.dart';
import 'chat.dart';
import 'home_budget.dart';
import 'fridge.dart';
import 'shopping.dart';
import 'calendar.dart';
import 'localization.dart';
import 'my_family.dart';
import 'settings.dart';
import 'registration_screen.dart';

void main() => runApp(const App());

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Smart Family',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/home': (context) => const Home(),
        '/chat': (context) => const Chat(),
        '/homeBudget': (context) => const HomeBudget(),
        '/fridge': (context) => const Fridge(),
        '/shopping': (context) => const Shopping(),
        '/calendar': (context) => const Calendar(),
        '/localization': (context) => const Localization(),
        '/myFamily': (context) => const MyFamily(),
        '/settings': (context) => const Settings(),
      },
    );
  }
}
