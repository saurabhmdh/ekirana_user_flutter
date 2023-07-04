import 'package:ekirana_user_flutter/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( EkiranaApp());
}

class EkiranaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: "/home",
      routes: {
        '/home': (context) => HomeScreen()
      }
    );
  }
}

