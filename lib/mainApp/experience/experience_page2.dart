import 'package:flutter/material.dart';
import 'package:hr_app/AppBar/appbar.dart';
import 'Utility/chips.dart';

class ExperiencePageTwo extends StatefulWidget {
  const ExperiencePageTwo({Key? key}) : super(key: key);

  @override
  State<ExperiencePageTwo> createState() => _ExperiencePageTwoState();
}

class _ExperiencePageTwoState extends State<ExperiencePageTwo> {
  @override
  Widget build(BuildContext context) {
    var dropdownValue;
    return Scaffold(
        appBar: buildMyAppBar(context, 'experience', false),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProfileEditCard(),
                //===============================================//
                getTextField(hint: 'experience'),
                getTextField(hint: 'Education'),
                //=====================================================//
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? Colors.grey[100]
                          : Color(0xff34354A),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          elevation: 0,
                          isExpanded: true,
                          hint: Text(
                            'Skills',
                            // style: TextStyle(color: Colors.grey),
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              if (Chips.chipList.length <= 6)
                                Chips.chipList.add(newValue.toString());
                              // dropdownValue = newValue;
                            });
                          },
                          items: <String>[
                            'Adobe PhotoShop',
                            'Adobe XD',
                            'Figma'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Chips.chipList.isNotEmpty ? Chips() : null,
                ),
                //===========================================//
                getTextField(hint: 'Interest'),
                DiscriptionField('About'),
                SizedBox(height: 20),
                //===========================================//
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 60,
                          child: ElevatedButton(
                            child: Text('Save'), //next button
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              primary: Color(0xffC53B4B),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => SecondProfile()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ));
  }
}
//==================================================//

class ProfileEditCard extends StatelessWidget {
  const ProfileEditCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            CircleAvatar(
              radius: (50),
              backgroundColor: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset("assets/images/user.png"),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name Here',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text('Front-End UI', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
