import 'package:flutter/material.dart';
import 'constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
        backgroundColor: Color(0xff03141b),
      ),
      backgroundColor: Color(0xff132025),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/avatar.jpg'),
                  ),
                  SizedBox(),
                  Text(
                    'Flutter developer',
                    style: kAvatarTitle,
                  ),
                ],
              ),
            ),
            Text(
              'Sichangi Felix Wafula',
              style: kContactInfo,
            ),
            Text(
              '0740695071',
              style: kContactInfo,
            ),
            Text(
              'sichangi24@gmail.com',
              style: kContactInfo,
            ),
            Column(
              children: [
                HomePageCard(path: '/first', tag: 'Personal Information'),
                HomePageCard(
                    path: '/second', tag: 'Education and Qualifications'),
                HomePageCard(path: '/third', tag: 'Employment History'),
                HomePageCard(path: '/fourth', tag: 'Certifications'),
                HomePageCard(path: '/fifth', tag: 'Achievements'),
                HomePageCard(path: '/sixth', tag: 'Hobbies'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//this card is reused in creating the vertical card view on this homepage.
//it takes 2 strings as arguments

class HomePageCard extends StatelessWidget {
  HomePageCard({required this.path, required this.tag});

  final String path, tag;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      color: Color(0xff03141b),
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tag,
              style: kSelectiveCards,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, path);
              },
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
