import 'package:flutter/material.dart';
import 'static_routes.dart';
import 'colors.dart';
import 'pages_data.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: turquoise,
          title: const Text('Chat'),
        ),
        drawer: Drawer(
          child:
          Container (
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
                        size: 35) ,
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
                  child: Text('He\'d have you all unravel at the asda ihsadiu ashyf9pasiu haspifh aosifh oasihfoi asfio ahsoifhasoifh asoifh asoiuf oaishf ',
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