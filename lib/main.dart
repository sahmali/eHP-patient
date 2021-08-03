import 'package:flutter/material.dart';
import 'screens/profile_screen.dart';
import 'screens/profile_settings_screen.dart';
import 'palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: backgroundColor,
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        appBarTheme:
            AppBarTheme(backgroundColor: Color(0xFFF9FAFC), elevation: 0.00),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfileSettingsScreen(),
    );
  }
}
