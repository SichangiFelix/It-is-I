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
              EducationCard(
                institutionName: 'Kenyatta University',
                yearOfStudy: '2019-2023',
                honorsReceived:
                    'Bachelor of Science Degree in Computer Science\n'
                    '\n'
                    'Principal areas of study  include: artificial intelligence, computer systems and networks, security, database systems, human computer interaction, vision and graphics, numerical analysis, programming languages, software engineering, bioinformatics and theory of computing.',
                imageResource: 'images/KU logo.png',
              ),
              EducationCard(
                institutionName: 'Friends School Kamusinga',
                yearOfStudy: '2015-2018',
                honorsReceived: 'Certificate of Secondary education\n'
                    '\n'
                    'Principal areas of study  include: artificial intelligence, computer systems and networks, security, database systems, human computer interaction, vision and graphics, numerical analysis, programming languages, software engineering, bioinformatics and theory of computing.',
                imageResource: 'images/Kamusinga.jpg',
              ),
              EducationCard(
                institutionName: 'Lugulu Boarding Primary School',
                yearOfStudy: '2006-2014',
                honorsReceived: 'Certificate of Primary Education\n'
                    '\n'
                    'Principal areas of study  include: artificial intelligence, computer systems and networks, security, database systems, human computer interaction, vision and graphics, numerical analysis, programming languages, software engineering, bioinformatics and theory of computing.',
                imageResource: 'images/ministry.webp',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  final String institutionName, yearOfStudy, honorsReceived, imageResource;

  EducationCard(
      {required this.institutionName,
      required this.yearOfStudy,
      required this.honorsReceived,
      required this.imageResource});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.0,
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
            flex: 1,
            child: Row(
              children: [
                //logo section
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageResource),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          institutionName,
                          style: kInstitutionNameText,
                        ),
                        Text(
                          yearOfStudy,
                          style: kInstitutionNameText,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Text(
                honorsReceived,
                style: kHonorsText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const kInstitutionNameText = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.w500,
  fontFamily: 'Quattrocento Sans',
  color: Colors.white60,
);

const kHonorsText = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w300,
  fontFamily: 'Quattrocento Sans',
  color: Colors.white60,
);
