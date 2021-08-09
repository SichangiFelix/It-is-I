import 'package:flutter/material.dart';
import 'constants.dart';

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff132025),
      appBar: AppBar(
        title: Text(
          'My Education details',
          style: kPageTitle,
        ),
        backgroundColor: Color(0xff03141b),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xff03141b),
                border: Border.all(
                  color: Colors.black87,
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      //logo section,
                      Column(
                        children: [
                          Text('data'),
                          Text('data'),
                        ],
                      )
                    ],
                  ),
                  Text('Honors received from it'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
