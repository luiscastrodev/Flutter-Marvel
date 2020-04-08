import 'package:flutter/material.dart';
import 'package:marvel_app/API/api.dart';
import 'package:marvel_app/components/home/app_bar_home_page.dart';
import 'package:marvel_app/components/home/list_item_footer.dart';
import 'package:marvel_app/components/home/list_item_header.dart';
import 'package:marvel_app/models/character.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  API api;

  initState() {
    super.initState();
    api = API();
  }

  _buildItensHeaderListView(BuildContext context, AsyncSnapshot snapshot) {
    List<Character> characters = snapshot.data;
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: characters.length,
        itemBuilder: (context, index) {
          return ListItemHeader(
            character: snapshot.data[index],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: api.getCharacterList(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return new Center(
                child: CircularProgressIndicator(),
              );
            default:
              if (snapshot.hasError)
                return new Text('Error: ${snapshot.error}');
              else
                return Scaffold(
                  body: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      AppBarHomePage(),
                      Positioned(
                        top: 120,
                        left: 5,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Column(
                            children: <Widget>[
                              _buildItensHeaderListView(context, snapshot),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 1,
                                color: Colors.grey[300],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 250,
                                child: ListView(
                                  scrollDirection: Axis.vertical,
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 30,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            height: 30,
                                            width: 200,
                                            child: Text(
                                              '   Popular Heroes',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 70,
                                            height: 20,
                                            margin: EdgeInsets.only(
                                                left: 0,
                                                right: 40.0,
                                                bottom: 0,
                                                top: 0),
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(2),
                                            child: Text(
                                              'MORE',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    ListItemFooter(
                                      title: "Absorbing Man",
                                      url:
                                          'http://i.annihil.us/u/prod/marvel/i/mg/1/b0/5269678709fb7.jpg',
                                    ),
                                    ListItemFooter(
                                      title: "Adam Warlock",
                                      url:
                                          'http://i.annihil.us/u/prod/marvel/i/mg/a/f0/5202887448860.jpg',
                                    ),
                                    ListItemFooter(
                                      title: "Agent Brand",
                                      url:
                                          'http://i.annihil.us/u/prod/marvel/i/mg/4/60/52695285d6e7e.jpg',
                                    ),
                                    ListItemFooter(
                                      title: "Ajaxis",
                                      url:
                                          'http://i.annihil.us/u/prod/marvel/i/mg/b/70/4c0035adc7d3a.jpg',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
          }
        });
  }
}
