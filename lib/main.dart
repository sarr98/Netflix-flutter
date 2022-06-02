import 'dart:js';

import 'package:clone_netflix/repositories/data_repository.dart';
import 'package:clone_netflix/ui/screens/home_screen.dart';
import 'package:clone_netflix/ui/screens/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: ((context) => DataRepository()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Netflix',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: LoadingScreen(),
    );
  }
}
