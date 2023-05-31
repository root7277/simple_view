import 'package:flutter/material.dart';
import 'header_page.dart';
import 'login_page.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'header_page',
      routes: {
        'header_page': (context) {
         return Header_page();
        },
        'login_page': (context) {
          return Login_page();
        }
      },
      home: Header_page(),
    ),
  );
}

