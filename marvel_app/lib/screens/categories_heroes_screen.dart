import 'package:flutter/material.dart';
import 'package:marvel_app/components/list_item_categories.dart';
import 'package:marvel_app/components/app_bar_categories.dart';

class CategoriesHeroesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          AppBarCategory(),
          Positioned(
            top: 90,
            left: 5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ListItemCategory(
                          title: 'Comics',
                          url:
                              'http://i.annihil.us/u/prod/marvel/i/mg/c/60/58dbce634ea70.jpg'),
                      ListItemCategory(
                          title: 'Series',
                          url:
                              'http://i.annihil.us/u/prod/marvel/i/mg/4/b0/5d939e25a9787.jpg'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ListItemCategory(
                          title: 'Stories',
                          url:
                              'http://i.annihil.us/u/prod/marvel/i/mg/1/b0/5269678709fb7.jpg'),
                      ListItemCategory(
                          title: 'Events',
                          url:
                              'http://i.annihil.us/u/prod/marvel/i/mg/9/50/4ce18691cbf04.jpg'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
