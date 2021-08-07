import 'package:flutter/material.dart';

class BioInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Personal Information'),
        backgroundColor: Color(0xff03141b),
      ),
      body: SafeArea(
        child: Center(
          child: Text('THIS IS THE PERSONAL INFORMATION PAGE'),
        ),
      ),
    );
  }
}
