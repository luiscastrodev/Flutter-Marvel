import 'package:flutter/material.dart';

class AppBarCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 50,
              ),
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: Column(
                children: <Widget>[
                  Text(
                    '2020 © Category ',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(258, 36, 70, 0.9),
                  Color.fromRGBO(211, 45, 140, 0.8)
                ]),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(400, 120),
                ),
              ),
            ),
          ],
        ),
      );
  }
}

