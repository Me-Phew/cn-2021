import 'package:flutter/material.dart';
import 'static_routes.dart';
import 'colors.dart';
import 'pages_data.dart';
import 'pages.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: turquoise,
        title: const Text('Strona główna'),
      ),
      drawer: Drawer(
        child: Container (
          color: backgroundColor,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: turquoise,
                ),
                child: Text('Smart Family',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: textColor,
                  ),
                ),
              ),
              ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: titleList.length,
          itemBuilder: (BuildContext context, int index) => ListTile(
            leading: Icon(leadingIcons[index],
                color: selectedTile == index ? cyan : textColor,
                size: 35),
            title: Text(titleList[index],
                style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: selectedTile == index ? cyan : textColor
                )
            ),
            tileColor: Colors.white,
            selected: selectedTile == index,
            onTap: () {
              _updateSelectedListTile(index);
              setState(() {});
              goToPage(context, pages[index]);
            },
          ),
        ),
              ListView(
        padding: const EdgeInsets.all(0),
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [
          ListTile(
            leading: const Icon(Icons.logout,
                color: textColor,
                size: 35),
            title: Text('Wyloguj się',
              style: Theme.of(context).textTheme.headline5!
                  .copyWith(color: textColor),
            ),
            onTap: () {
              goToPage(context, Pages.login);
            },
          ),
        ],
      ),
          ],
          ),
        ),
      ),
      body: Container (
        color: backgroundColor,
        child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 1,
        children: <Widget>[
        Container(
          child: Text('Strona główna aplikacji',
              style: Theme.of(context).textTheme.headline4!.copyWith(color: textColor)),
        padding: const EdgeInsets.all(8),
        color: lightGrey,
        ),
    ],
    )
    )
    );
  }

  _updateSelectedListTile(int index) {
    selectedTile = index;
  }
}