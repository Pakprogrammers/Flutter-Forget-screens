import 'package:flutter/material.dart';
import 'package:pak_programmers/gettingstart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'Login',
    routes: {
      'Login': (context) => const GettingStart(),
    },
  ));
}
