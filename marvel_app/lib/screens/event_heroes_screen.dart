import 'package:flutter/material.dart';
import 'package:marvel_app/API/api.dart';
import 'package:marvel_app/components/app_bar_events.dart';
import 'package:marvel_app/components/list_item_events.dart';
import 'package:marvel_app/models/Events.dart';

class EventHeroeScreen extends StatefulWidget {
  @override
  _EventHeroeScreen createState() => _EventHeroeScreen();
}

class _EventHeroeScreen extends State<EventHeroeScreen> {
  API api;

  initState() {
    super.initState();
    api = API();
  }

  _buildItensListView(BuildContext context, AsyncSnapshot snapshot) {
    List<Events> events = new List<Events>();
    events = snapshot.data;

    print(snapshot.data);
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: events.length,
        itemBuilder: (context, index) {
          return ListItemEvents(
            events: events[index], 
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: api.getEventsList(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return new Center(
                child: CircularProgressIndicator(),
              );
            default:
              if (snapshot.hasError)
                return Center(child: new Text('Error: ${snapshot.error}'));
              else
                return Scaffold(
                  body: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      AppBarEventsPage(),
                      Positioned(
                        top: 90,
                        left: 5,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: _buildItensListView(context, snapshot),
                        ),
                      ),
                    ],
                  ),
                );
          }
        });
  }
}
