import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FirstrunPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => FirstrunPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Spacer(flex: 3),
          Image.asset(
            'assets/bloc_logo_small.png',
            height: 120,
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: [
                  Text("Welcome to Natterberry",
                      style: TextStyle(fontSize: 20)),
                  Text("Who are you?", style: TextStyle(fontSize: 20)),
                ],
              )
            ],
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(flex: 2),
              UserButton(
                iconData: Icons.child_care,
                title: "Student",
                onPressed: () => print('implement me'),
              ),
              Spacer(),
              UserButton(
                  iconData: Icons.person,
                  title: "Volunteer",
                  onPressed: () => print('implement me')),
              Spacer(flex: 2),
            ],
          ),
          Spacer(flex: 3),
        ],
      ),
    );
  }
}

class UserButton extends StatelessWidget {
  UserButton(
      {required this.iconData, required this.title, required this.onPressed});

  final IconData iconData;

  /// Title to show
  final String title;

  /// Callback that fires when the user taps on this widget
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            child: Icon(
              iconData,
              size: 60,
            ),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(title, style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
