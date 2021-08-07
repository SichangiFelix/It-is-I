import 'package:flutter/material.dart';

class Certification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Certifications in the field'),
        backgroundColor: Color(0xff03141b),
      ),
      body: SafeArea(
        child: Center(
          child: Text('THIS IS THE  PAGE CONTAINING MY Certifications'),
        ),
      ),
    );
  }
}
