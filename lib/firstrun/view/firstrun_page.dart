//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:natterberry/firstrun/firstrun.dart';

class FirstrunPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => FirstrunPage());
  }

  @override
  Widget build(BuildContext context) {
    return FirstrunForm();
  }
}
