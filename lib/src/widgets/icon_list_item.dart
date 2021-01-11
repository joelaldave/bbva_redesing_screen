import 'package:flutter/material.dart';

class IconsListView extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const IconsListView({
    Key key,
    this.icon,
    this.text,
    this.color = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            radius: 35,
            child: Icon(
              this.icon,
              color: Colors.white,
              size: 40,
            ),
          ),
          Text(
            this.text,
            style: TextStyle(
              color: Color(0xff61768A),
              fontSize: 11,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
