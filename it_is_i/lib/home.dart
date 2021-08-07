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
                Card(
                  color: Color(0xff03141b),
                  margin:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Personal information',
                          style: kSelectiveCards,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white60,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
