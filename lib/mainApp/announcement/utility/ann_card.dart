import 'package:flutter/material.dart';

final darkRed = Color(0xffbf2634);

class AnnCard extends StatelessWidget {
  final String head;
  final String body;
  final String date;
  AnnCard(this.head, this.body, this.date);

  //reuse but with changing
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10 ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(color: Colors.grey.withOpacity(0.1), width: 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            Text(
              head,
              style: TextStyle(
                color: darkRed, //color red
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              body,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 50),
            Text(
              date,
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
