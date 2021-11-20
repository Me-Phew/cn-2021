import 'package:flutter/material.dart';
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

void goToPage(context, page) {
    Navigator.pop(context);

    switch (page) {
        case Pages.home:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Home(),
                ));
            break;
        case Pages.chat:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Chat(),
                ));
            break;
        case Pages.homeBudget:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HomeBudget(),
                ));
            break;
        case Pages.fridge:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Fridge(),
                ));
            break;
        case Pages.shopping:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Shopping(),
                ));
            break;
        case Pages.calendar:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Calendar(),
                ));
            break;
        case Pages.localization:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Localization(),
                ));
            break;
        case Pages.myFamily:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyFamily(),
                ));
            break;
        case Pages.settings:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Settings(),
                ));
            break;
        default:
            throw MaterialState.error;
    }
}