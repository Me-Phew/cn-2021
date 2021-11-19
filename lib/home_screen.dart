import 'package:flutter/material.dart';
import 'colors.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: turquoise,
        title: const Text('Smart Family'),
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
              leading: Icon(Icons.home),
              title: Text('Strona główna'),
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('Czat'),
            ),
            ListTile(
              leading: Icon(Icons.euro),
              title: Text('Budżet domowy'),
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: Text('Lodówka'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Zakupy'),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Kalendarz'),
            ),
            ListTile(
              leading: Icon(Icons.gps_fixed),
              title: Text('Lokalizacja'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Moja rodzina'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Ustawienia'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.popAndPushNamed(context, '/second');
              }
            ),
          ],
        ),
      ),

    );
  }
}
