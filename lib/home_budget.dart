import 'package:flutter/material.dart';
import 'package:smart_family/pages.dart';
import 'static_routes.dart';
import 'colors.dart';
import 'pages_data.dart';

class HomeBudget extends StatefulWidget {
  const HomeBudget({Key? key}) : super(key: key);

  @override
  _HomeBudgetState createState() => _HomeBudgetState();
}

class _HomeBudgetState extends State<HomeBudget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: turquoise,
          title: const Text('Budżet domowy'),
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
                        style: Theme.of(context).textTheme.headline5! // TODO: HERE
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
            child: ListView (
              children: const [
                ListTile(
                  leading: (
                  Icon(Icons.euro,
                  color: textColor,
                  size: 30)
                  ),
                  title: (
                  Text('Stan konta: ',
                  style: TextStyle(color: textColor, fontSize: 30),
                  textAlign: TextAlign.center)
                  ),
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