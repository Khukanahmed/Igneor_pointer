import 'package:flutter/material.dart';
import 'package:newapps/TextFrom.dart';
import 'package:newapps/continar.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      title: 'My_Flutter_App',
      home:RadioListTileExample( );
    );
  }
}

