import 'package:flutter/material.dart';
import 'constants.dart';

class Hobbies extends StatelessWidget {
  const Hobbies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff132025),
      appBar: AppBar(
        title: Text(
          'My Hobbies',
          style: kPageTitle,
        ),
        backgroundColor: Color(0xff03141b),
      ),
      body: SafeArea(
        child: Center(
          child: Text('THESE ARE MY HOBBIES'),
        ),
      ),
    );
  }
}
