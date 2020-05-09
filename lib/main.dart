import 'package:flutter/material.dart';
import 'home_widget.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('COVID-19'),
          backgroundColor: Colors.grey[900],
        ),
        body: HomePage(),
      ),
    ),
  );
}