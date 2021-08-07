import 'package:flutter/material.dart';

class EmploymentInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Employment History'),
        backgroundColor: Color(0xff03141b),
      ),
      body: SafeArea(
        child: Center(
          child: Text('THIS IS THE HISTORY OF MY EMPLOYMENT'),
        ),
      ),
    );
  }
}
