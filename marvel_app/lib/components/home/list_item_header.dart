import 'package:flutter/material.dart';
import 'package:marvel_app/models/character.dart';

class ListItemHeader extends StatelessWidget {
  final Character character;
  ListItemHeader({this.character});

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
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage( 
                image: NetworkImage(
                  character.thumbnail.path + "."+ character.thumbnail.extension,   
                ), 
                fit: BoxFit.cover, 
              ), 
            ),
            height: 300,
            width: 200,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: 200, 
                      child: Text(
                        this.character.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          backgroundColor: Colors.black54,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
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
