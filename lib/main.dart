import 'package:flutter/material.dart';

import 'package:kevin_navigationjs/pages/pages.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/item': (context) => const ItemPage(),
      },
    ),
  );
}
