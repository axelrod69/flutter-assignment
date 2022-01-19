import 'package:flutter/material.dart';
import './main_screen.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './provider_class.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red
        ),
        home: MainScreen(),
      ),
    );
  }
}