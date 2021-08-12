import 'package:flutter/material.dart';
import 'package:it_is_i/achievementsPage.dart';
import 'package:it_is_i/bioInfoPage.dart';
import 'package:it_is_i/educationPage.dart';
import 'package:it_is_i/employmentPage.dart';
import 'package:it_is_i/hobbiesPage.dart';
import 'certificationPage.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      //a map containing my routes for each page
      routes: {
        '/': (context) => Home(),
        '/first': (context) => BioInformation(),
        '/second': (context) => Education(),
        '/third': (context) => EmploymentInfo(),
        '/fourth': (context) => Certification(),
        '/fifth': (context) => Achievements(),
        '/sixth': (context) => Hobbies(),
      },
    );
  }
}
