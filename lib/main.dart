import 'package:flutter/material.dart';
// import 'package:notebook/auth/start.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
// import 'package:notebook/page3.dart';
// import 'package:intl/intl.dart';
// import 'package:notebook/model.dart';
// import 'package:notebook/page2.dart';
// import 'package:notebook/page1.dart';
// import 'package:notebook/page3.dart';
// import 'package:notebook/canvas.dart';
// import 'package:firebase_auth/firebase_auth.dart';

import 'package:notebook/page0.dart';
// import 'package:notebook/storage/upload_page.dart';

Color mycolor = Color(0xfff373F51);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: Start(),
      home: MyHomePage(title: 'Virtual Notebook'),
    );
  }
}
