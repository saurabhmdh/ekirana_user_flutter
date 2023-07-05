import 'package:ekirana_user_flutter/screens/BottomNavigationFile.dart';
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
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => BottomNavigationFile(0),
        '/home': (context) => HomeScreen()
      }
    );
  }
}

