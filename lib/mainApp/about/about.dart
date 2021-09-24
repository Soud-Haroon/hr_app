import 'package:flutter/material.dart';
import 'package:hr_app/AppBar/appbar.dart';
import 'package:hr_app/background/background.dart';

class MainAbout extends StatelessWidget {
  const MainAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildMyAppBar(context, 'About', true),
      body: Stack(
        children: [
          const BackgroundCircle(),
          Container(
            child: AboutCard(body),
          ),
        ],
      ),
    );
  }
}

//========================================//

class AboutCard extends StatelessWidget {
  final String body;
  AboutCard(this.body);

  //reuse but with changing
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(color: Colors.grey.withOpacity(0.1), width: 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Text(
            //   head,
            //   style: TextStyle(
            //     color: darkRed, //color red
            //     fontWeight: FontWeight.bold,
            //     fontSize: 17,
            //   ),
            // ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              body,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 50),
            // Text(
            //   date,
            //   style: TextStyle(
            //     fontSize: 10,
            //     color: Colors.grey,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

String body =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
