import 'package:flutter/material.dart';
import 'package:hr_app/background/background.dart';
import 'package:hr_app/mainApp/forms/form_2.dart';

class MainPersonal_Info extends StatelessWidget {
  const MainPersonal_Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: const [
        BackgroundCircle(),
        FormTwo(),
      ]),
    );
  }
}
