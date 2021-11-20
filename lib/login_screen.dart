import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_family/colors.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Login extends StatefulWidget{
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool isRememberMe = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  nullFieldAllert(){
    Alert(
      context: context,
      title: 'Nie tak szybko...',
      desc: 'Te pola nie mogą być puste',
      buttons: [
        DialogButton(
          child: const Text('OK'),
          onPressed: () => Navigator.pop(context),
          color: const Color(0xEEFFFFFF),
        ),
      ],
    ).show();
  }
  bothFieldsHaveValues(){
    Alert(
      context: context,
      title: 'Gratulacje!!!',
      desc: 'Udało ci się zalogować',
      buttons: [
        DialogButton(
          child: const Text('OK'),
          onPressed: () => Navigator.pop(context),
          color:  const Color(0xEEFFFFFF),
        ),
      ],
    ).show();
    return true;
  }
  checkForEmptyTextField(){
    String email, password;
    email = emailController.text;
    password = passwordController.text;
    if(email == '' || password == ''){
      nullFieldAllert();
    } else {
      const AlertDialog(title: Text('Pomyślnie zalogowano'));
      bothFieldsHaveValues();
    }
  }

  Widget buildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Email',
        style: TextStyle(
          color: textColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: turquoise,
          borderRadius: BorderRadius.circular(30),
          //TODO: on focus
          //boxShadow: const[
            //BoxShadow(
              //color: Colors.white24,
              //blurRadius: 6,
              //offset: Offset(0,2),
            //),
          //]
        ),
        height: 60,
        child: TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          cursorColor: backgroundColor,
          style: const TextStyle(
            color: backgroundColor,
          ),
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.email,
              color: backgroundColor,
            ),
            hintText: 'Email',
            hintStyle: TextStyle(
              color: Colors.white38,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Hasło',
        style: TextStyle(
          color: textColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: turquoise,
          borderRadius: BorderRadius.circular(30),
          //TODO: on focus
          //boxShadow: const[
            //BoxShadow(
              //color: Colors.white24,
              //blurRadius: 6,
              //offset: Offset(0,2),
            //),
          //]
        ),
        height: 60,
        child: TextField(
          controller: passwordController,
          obscureText: true,
          cursorColor: backgroundColor,
          style: const TextStyle(
            color: backgroundColor,
          ),
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.lock,
              color: backgroundColor,
            ),
            hintText: 'Hasło',
            hintStyle: TextStyle(
              color: Colors.white38,
            ),
          ),
        ),
      ),
    ],
  );
}

/*Widget buildForgotPasswordBtn(){
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.only(right: 0),
        textStyle: const TextStyle(fontWeight: FontWeight.bold, color: TextColor),
      ),
      onPressed: () {},
      child: const Text('Nie pamiętam hasła', 
      style: TextStyle(color: TextColor)),
    ),
  );
}
*/

Widget buildRememberCb(){
  return Container(
    height: 20,
    child: Row(
      children: <Widget>[
        Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white),
          child: Checkbox(
            value: isRememberMe,
            checkColor: turquoise,
            activeColor: Colors.white,
            onChanged: (value){
              setState(() {
                isRememberMe = value!;
              });
            },
          ),
        ),
         const Text(
          'Zapamiętaj mnie',
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

Widget buildLoginBtn(){
  return Container(
    padding:  const EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        padding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        primary: const Color(0xEEFFFFFF),
      ),
      onPressed: checkForEmptyTextField,
      child: const Text(
        'Zaloguj się',
        style: TextStyle(
          color: backgroundColor,
          fontSize: 20, 
          fontWeight: FontWeight.bold
          ),
      ),
    )
  );
}

Widget buildSignUpBtn(){
  return GestureDetector(
    onTap: (){},
    child: RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Nie posiadasz konta? ',
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: 'Zarejestruj się',
            style: TextStyle(
              color: turquoise,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
      ])
    ),
  );
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      backgroundColor,
                      backgroundColor,
                      backgroundColor,
                      backgroundColor,
                    ]
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,
                  ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Zaloguj się',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 50),
                    buildEmail(),
                    const SizedBox(height: 20),
                    buildPassword(),
                    const SizedBox(height: 20),
                    //buildForgotPasswordBtn(),
                    buildRememberCb(),
                    buildLoginBtn(),
                    buildSignUpBtn(),
                  ],
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}