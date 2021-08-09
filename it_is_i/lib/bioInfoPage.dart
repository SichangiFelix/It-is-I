import 'package:flutter/material.dart';
import 'package:it_is_i/constants.dart';

class BioInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff132025),
      appBar: AppBar(
        title: Text(
          'My Personal Information',
          style: kPageTitle,
        ),
        backgroundColor: Color(0xff03141b),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                BioInfoTabs(identifier: 'Name', value: 'Wafula Felix Sichangi'),
                BioInfoTabs(identifier: 'ID Number', value: '38108196'),
                BioInfoTabs(identifier: 'Phone', value: '0740695071'),
                BioInfoTabs(identifier: 'Date of Birth', value: '10/08/2000'),
                BioInfoTabs(identifier: 'Email', value: 'sichangi24@gmail.com'),
                BioInfoTabs(identifier: 'Marital status', value: 'Single'),
                BioInfoTabs(identifier: 'Weight', value: '76 Kg'),
                BioInfoTabs(identifier: 'Height', value: '...'),
                BioInfoTabs(identifier: 'HomeTown', value: 'Kitale'),
                BioInfoTabs(identifier: 'Adress', value: '499 kitale'),
                BioInfoTabs(identifier: 'Resident Town', value: 'Nairobi'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//the tab for repeat
class BioInfoTabs extends StatelessWidget {
  BioInfoTabs({required this.identifier, required this.value});

  //variables am using to pass unique values for each tab used
  final String identifier, value;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff03141b),
      padding: EdgeInsets.all(2.0),
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: ListTile(
        leading: Text(
          identifier,
          style: kBioText,
        ),
        trailing: Text(
          value,
          style: kBioText,
        ),
      ),
    );
  }
}

//constants for styling the text on this page
const kBioText = TextStyle(
  fontFamily: 'Courgette',
  fontSize: 18.0,
  color: Colors.blueGrey,
);
