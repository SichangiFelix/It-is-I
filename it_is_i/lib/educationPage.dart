import 'package:flutter/cupertino.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              EducationCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  final String institutionName, yearOfStudy, honorsReceived;

  EducationCard(
      {required this.institutionName,
      required this.yearOfStudy,
      required this.honorsReceived});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff03141b),
            Color(0xff152238),
            Color(0xff192841),
            Color(0xff1C2E4A)
          ],
          stops: [0.5, 0.8, 1.0, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                //logo section
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    child: new Image.asset('images/Kamusinga.jpg'),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Kenyatta University'),
                        Text('2019-2023'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Text('Bachelor of Science Degree in Biology'),
            ),
          ),
        ],
      ),
    );
  }
}
