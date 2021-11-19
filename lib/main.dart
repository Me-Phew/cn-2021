import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'home_screen.dart';

void main() => runApp(const App());

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Smart Family',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => LoginScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => HomeScreen(),
      },
    );
    //   debugShowCheckedModeBanner: false,
    //   home: HomeScreen(),  // LoginScreen(),
    // );
  }
}
