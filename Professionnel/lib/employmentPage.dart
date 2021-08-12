import 'package:flutter/material.dart';
import 'constants.dart';

class EmploymentInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff132025),
      appBar: AppBar(
        title: Text(
          'My Employment History',
          style: kPageTitle,
        ),
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
