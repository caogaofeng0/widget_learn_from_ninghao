import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('home'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('about'),
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                }
              )
            ],
          ),
        ));
  }
}


