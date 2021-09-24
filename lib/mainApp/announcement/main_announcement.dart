import 'package:flutter/material.dart';
import 'package:hr_app/AppBar/appbar.dart';
import 'package:hr_app/background/background.dart';
import 'package:hr_app/mainApp/Announcement/utility/ListofData.dart';


class MainAnnouncement extends StatelessWidget {
  const MainAnnouncement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildMyAppBar(context, 'Announcement', true),
      body: Stack(
        children: [
          const BackgroundCircle(),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView.builder(
                itemCount: annCardData.length,
                itemBuilder: (context, index) => annCardData[index]),
          ),
        ],
      ),
    );
  }
}
