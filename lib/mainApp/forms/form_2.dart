import 'package:flutter/material.dart';

class FormTwo extends StatefulWidget {
  @override
  _FormTwoState createState() => _FormTwoState();
}

class _FormTwoState extends State<FormTwo> {
  bool value = false;
  var dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
      children: [

        //-----------------------------------------------//
        TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Title',
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
              autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                    final regExp = RegExp(pattern);
                    if (value!.isEmpty) {
                      return null;
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter only Alphabets';
                    } else {
                      return null;
                    }
                  },
        ),
        SizedBox(height: 15),
        //-------------------------------------------------//
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.keyboard_arrow_down),
              elevation: 0,
              isExpanded: true,
              dropdownColor: Colors.white,
              hint: Text(
                'Employment Type',
                style: TextStyle(color: Colors.grey),
              ),
              onChanged: (String? newValue) {
                //   setState(() {
                //     dropdownValue = newValue;
                //   });
              },
              items: <String>['Male', 'Female', 'Other']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
        SizedBox(height: 15),
        //-------------------------------------------------//
        TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Cpmpany Name',
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
              autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                    final regExp = RegExp(pattern);
                    if (value!.isEmpty) {
                      return null;
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter only Alphabets';
                    } else {
                      return null;
                    }
                  },
        ),
        SizedBox(height: 15),
        //-------------------------------------------------//
        TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Location',
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
              autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                    final regExp = RegExp(pattern);
                    if (value!.isEmpty) {
                      return null;
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter only Alphabets';
                    } else {
                      return null;
                    }
                  },
        ),
        SizedBox(height: 5),
        //-------------------------------------------------//
        Row(children: [
          Expanded(
              child: Container(
            height: 60,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Start Birth', style: TextStyle(color: Colors.grey)),
                IconButton(
                    icon: Icon(Icons.today, color: Colors.grey),
                    onPressed: () {
                      showDatePicker(
                          context: context,
                          initialDate: DateTime(2005),
                          firstDate: DateTime(2000),
                          lastDate: DateTime.now());
                    })
              ],
            ),
          )),
          SizedBox(width: 10),
          Expanded(
              child: Container(
            height: 60,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('End Birth', style: TextStyle(color: Colors.grey)),
                IconButton(
                    icon: Icon(Icons.today, color: Colors.grey),
                    onPressed: () {
                      showDatePicker(
                          context: context,
                          initialDate: DateTime(2005),
                          firstDate: DateTime(2000),
                          lastDate: DateTime.now());
                    }),
              ],
            ),
          )),
        ]),
        Theme(
          data: ThemeData(
            unselectedWidgetColor: Color(0xffbf2634),
          ),
          child: CheckboxListTile(
            contentPadding: EdgeInsets.only(left: 0),
            title: Text(
              'I currently work in this role',
              style: TextStyle(color: Colors.grey),
            ),
            value: value,
            activeColor: Color(0xffbf2634),
            onChanged: (bool? value) {
              setState(() {
                this.value = value!;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
        TextFormField(
          maxLines: 5,
          decoration: InputDecoration(
            hintText: 'Discription',
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.transparent,
                )),
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                    final regExp = RegExp(pattern);
                    if (value!.isEmpty) {
                      return null;
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter only Alphabets';
                    } else {
                      return null;
                    }
                  },
        ),
      ],
    ));
  }
}
