import 'package:flutter/material.dart';
import 'package:new_project_1/view/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Barcode App',
      home: HomeView(),
    );
  }
}
