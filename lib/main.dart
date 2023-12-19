//import 다른 파일에 있는 내용을 자동으로 인식해서 사용할 수 있게 하는것
import 'package:flutter/material.dart';
import 'package:pratice_01/ios_style_screen.dart';
import 'package:pratice_01/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IosStyleScreen(),
    );
  }
}

