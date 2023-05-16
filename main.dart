import 'package:flutter/material.dart';
import 'package:task/homeview.dart';
import 'package:get/get.dart';
import 'package:task/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {'homeview': (context) => home(), 'login': (context) => MyLogin()},
  ));
}
