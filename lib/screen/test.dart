import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sample3/color/colour.dart';

class BottomReport {
  BuildContext context;
  GlobalKey<ScaffoldState> newKey;
  BottomReport(
    this.context,
    this.newKey,
  );

  /* bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          gradient: buttonGradient,
        ),
        child: ElevatedButton(
          onPressed: () {
            _dateRange == null || _selectedValue == null
            ? print("Select  all fields: " + "$_selectedValue")
            :  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ReportScreen2(_dateRange, _selectedValue)),);
          },
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(10),
            padding: MaterialStateProperty.all(EdgeInsets.all(0)),
          ),
          child: Container(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
              gradient: buttonGradient,
            ),
            child: Text(
              "Search",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
      ),
    ); */

  Widget customDropDown(String labelText, Widget textFormField) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            labelText,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: fontColour),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height * 0.05,
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color:
                        dropDownBorderColour /* 3.Color(0XFF3282b8) */ /*2. Color(0XFF892cdc) */ /* 1.Color(0XFFAFEEEE) */,
                    width: 2.0)),
            child: textFormField),
      ],
    );
  }
}
