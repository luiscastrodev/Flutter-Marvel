import 'package:flutter/material.dart';

class ListItemFooter extends StatelessWidget {
  final String title;
  final String url;
  ListItemFooter({this.title, this.url});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(
        title,
        style: TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal),
      ),
      subtitle: Text(
        '12-03-2010',
        style: TextStyle(
            fontSize: 15, color: Colors.grey, fontWeight: FontWeight.normal),
      ),
      leading: ClipOval(
        child: Image.network(
          url,
          width: 60,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
      trailing: Icon(Icons.star, color: Colors.amber),
    );
  }
}
