import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // IconBadge(Icons.pool),
          // IconBadge(Icons.beach_access, size: 60),
          // IconBadge(Icons.airplanemode_inactive),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 200,
              maxWidth: 200
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          )
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: 300,
          height: 200,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0)),
            child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
          ),
        ),
        SizedBox(
          width: 100,
          height: 200,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(30, 14, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0)),
            child: Icon(Icons.snooze, color: Colors.white, size: 32),
          ),
        ),
        Positioned(
          child: Icon(Icons.snooze, color: Colors.white, size: 32),
          top: 20.0,
          left: 30.0,
        ),
        Positioned(
          child: Icon(Icons.snooze, color: Colors.white, size: 32),
          top: 120.0,
          left: 30.0,
        )
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
