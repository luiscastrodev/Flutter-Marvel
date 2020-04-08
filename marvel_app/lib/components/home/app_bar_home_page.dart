import 'package:flutter/material.dart';

class AppBarHomePage extends StatelessWidget {
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
                top: 25,
              ),
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Column(
                children: <Widget>[
                  Text(
                    '2020 © Home  ',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Heroes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        Icon(
                          Icons.subscriptions,
                          size: 40,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(278, 36, 80, 0.9),
                  Color.fromRGBO(231, 45, 150, 0.8)
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

