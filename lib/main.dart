import 'package:flutter/material.dart';
import 'sos_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SOS App',
      home: EmergencySOSScreen(),
    );
  }
}
