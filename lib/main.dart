import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyMainEntry());
}

class MyMainEntry extends StatelessWidget{
  const MyMainEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Learning Journey",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const LoginScreen(),
    );
}
}