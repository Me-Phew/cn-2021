import 'package:flutter/material.dart';
import 'package:smart_family/registration_screen.dart';
import 'pages.dart';
import 'home.dart';
import 'chat.dart';
import 'home_budget.dart';
import 'fridge.dart';
import 'shopping.dart';
import 'calendar.dart';
import 'localization.dart';
import 'my_family.dart';
import 'settings.dart';
import 'login_screen.dart';

void goToPage(context, page) {
    // Navigator.pop(context);
    MaterialPageRoute route;

    switch (page) {
        case Pages.login:
            route = MaterialPageRoute(
                builder: (context) => const Login()
            );
            break;
        case Pages.home:
            route = MaterialPageRoute(
                builder: (context) => const Home()
            );
            break;
        case Pages.chat:
            route = MaterialPageRoute(
                builder: (context) => const Chat(),
            );
            break;
        case Pages.homeBudget:
            route = MaterialPageRoute(
                builder: (context) => const HomeBudget(),
            );
            break;
        case Pages.fridge:
            route = MaterialPageRoute(
                builder: (context) => const Fridge(),
            );
            break;
        case Pages.shopping:
            route = MaterialPageRoute(
                builder: (context) => const Shopping(),
            );
            break;
        case Pages.calendar:
            route = MaterialPageRoute(
                builder: (context) => const Calendar(),
            );
            break;
        case Pages.localization:
            route = MaterialPageRoute(
                builder: (context) => const Localization(),
            );
            break;
        case Pages.myFamily:
            route = MaterialPageRoute(
                builder: (context) => const MyFamily(),
            );
            break;
        case Pages.settings:
            route = MaterialPageRoute(
                builder: (context) => const Settings(),
            );
            break;
        case Pages.registration:
            route = MaterialPageRoute(
                builder: (context) => const Register(),
            );
            break;
        default:
            route = MaterialPageRoute(
                builder: (context) => const Home()
            );
    }

    Navigator.push(
        context,
        route);
}