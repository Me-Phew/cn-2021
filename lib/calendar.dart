import 'package:flutter/material.dart';
import 'package:smart_family/pages.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'static_routes.dart';
import 'colors.dart';
import 'pages_data.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: turquoise,
          title: const Text('Kalendarz'),
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
        body: Container(
          color: textColor,
          child: (
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: [
                  const ListTile (
                    leading: Icon(Icons.event,
                        color: turquoise),
                    title: Text('Nadchodzące wydarzenia',
                      style: TextStyle(color: turquoise),
                      textAlign: TextAlign.center,),
                  ),
                  ListTile (
                    title: SfCalendar(view: CalendarView.month),
                  ),
                  ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      children: [
                        const ListTile (
                          leading: Icon(Icons.more_time,
                              color: turquoise),
                          title: Text('Reminders',
                            style: TextStyle(color: textColor),
                          ),
                        ),
                        ListTile (
                            title: SfRadialGauge(
                                axes: <RadialAxis>[
                                  RadialAxis(minimum: 0, maximum: 150,
                                      ranges: <GaugeRange>[
                                        GaugeRange(startValue: 0, endValue: 50, color:Colors.green),
                                        GaugeRange(startValue: 50,endValue: 100,color: Colors.orange),
                                        GaugeRange(startValue: 100,endValue: 168,color: Colors.red)],
                                      pointers: const <GaugePointer>[
                                        NeedlePointer(value: 108)],
                                      annotations: const <GaugeAnnotation>[
                                        GaugeAnnotation(widget: Text('01 h 48 min',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                                            angle: 90, positionFactor: 0.5
                                        )]
                                  )])
                        ),
                        ListTile (
                            title: ElevatedButton(
                                onPressed: () {
                                  print('');
                                },
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(150, 80)
                                ),
                                child: const Text('Dodaj przypomnienie'))
                        )
                      ]
                  )
                ],
              )
          ),
        ),
    );
  }
}

  _updateSelectedListTile(int index) {
    selectedTile = index;
  }