import 'package:flutter/material.dart';
import 'colors.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);


  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: turquoise,
        title: const Text('Settings'),
      ),
      drawer: Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: turquoise,
              ),
              child: Text(
                'Smart Family',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Strona główna'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/home');
                }
            ),
            ListTile(
                leading: const Icon(Icons.chat),
                title: const Text('Czat'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/chat');
                }
            ),
            ListTile(
                leading: const Icon(Icons.euro),
                title: const Text('Budżet domowy'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/homeBudget');
                }
            ),
            ListTile(
                leading: const Icon(Icons.fastfood),
                title: const Text('Lodówka'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/fridge');
                }
            ),
            ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Zakupy'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/shopping');
                }
            ),
            ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text('Kalendarz'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/calendar');
                }
            ),
            ListTile(
                leading: Icon(Icons.gps_fixed),
                title: Text('Lokalizacja'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/localization');
                }
            ),
            ListTile(
                leading: Icon(Icons.people),
                title: Text('Moja rodzina'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/myFamily');
                }
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('Ustawienia'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/settings');
                }
            ),
          ],
        ),
      ),
    );
  }
}