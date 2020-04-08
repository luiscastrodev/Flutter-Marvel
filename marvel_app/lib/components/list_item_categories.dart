import 'package:flutter/material.dart';

class ListItemCategory extends StatefulWidget {
 final  String title;
  final String url;

  ListItemCategory({this.title, this.url});

  @override
  _ListItemCategoryState createState() => _ListItemCategoryState();
}

class _ListItemCategoryState extends State<ListItemCategory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              widget.title,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22,
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                    widget.url,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              height: 220,
              width: 140,
            ),

          ),
        ],
      ),
    );
  }
}
