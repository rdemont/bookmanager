import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'services/databaseService.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    DatabaseService.initializeDb();

    return const MaterialApp(
      home: Home(),
    );
  }
}
