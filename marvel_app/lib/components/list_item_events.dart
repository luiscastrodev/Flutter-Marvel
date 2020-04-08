import 'package:flutter/material.dart';
import 'package:marvel_app/models/Events.dart';

class ListItemEvents extends StatelessWidget {
  final Events events;
  ListItemEvents({this.events});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.topLeft,
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: NetworkImage(
                        events.thumbnail.path +
                            "." +
                            events.thumbnail.extension,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                ),
                Text(
                  this.events.title,
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                 Text(
                  this.events.description,
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
