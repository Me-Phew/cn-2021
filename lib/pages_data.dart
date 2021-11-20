import 'package:flutter/material.dart';
import 'pages.dart';


final List<String> titleList = ['Strona Główna',
  'Chat',
  'Budżet domowy',
  'Lodówka',
  'Zakupy',
  'Kalendarz',
  'Lokalizacja',
  'Moja rodzina',
  'Ustawienia'];

final List<IconData> leadingIcons = [Icons.home,
  Icons.chat,
  Icons.euro,
  Icons.fastfood,
  Icons.shopping_cart,
  Icons.calendar_today,
  Icons.gps_fixed,
  Icons.people,
  Icons.settings];

final List<Pages> pages = [Pages.home,
  Pages.chat,
  Pages.homeBudget,
  Pages.fridge,
  Pages.shopping,
  Pages.calendar,
  Pages.localization,
  Pages.myFamily,
  Pages.settings];

int selectedTile = 0;