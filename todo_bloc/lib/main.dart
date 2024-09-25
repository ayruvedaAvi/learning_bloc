/*
  DOMAIN        :::  The domain folder is technology agnostic and contains the business logic of the application in abstract terms.
  DATA          :::  The data folder contains the data layer of the application, which consists of the repositories and data sources (particular tech).
  PRESENTATION  :::  The presentation folder contains the UI layer of the application, which includes the UI, blocs, and widgets.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
    );
  }
}