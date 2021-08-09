import 'package:flutter/material.dart';
import 'package:it_is_i/constants.dart';

class Certification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff132025),
      appBar: AppBar(
        title: Text(
          'My Certifications in the field',
          style: kPageTitle,
        ),
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
