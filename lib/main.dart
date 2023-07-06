import 'package:flutter/material.dart';
import 'package:flutter_weatherapp_ui/screens/home_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:const Color(0xff191a1e),

      ),
      home: HomeScreen(),
    );
  }
}
