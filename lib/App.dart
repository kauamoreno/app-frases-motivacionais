import 'package:flutter/material.dart';
import 'PaginaHome.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Removendo o bannerDebug
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: PaginaHome(),
    );
  }
}