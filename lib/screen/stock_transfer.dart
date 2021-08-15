import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sample3/color/colour.dart';

class StockTransfer extends StatefulWidget {
  @override
  _StockTransferState createState() => _StockTransferState();
}

class _StockTransferState extends State<StockTransfer> {
  var from;
  var to;
  var category;
  var productName;
  var productQuantity;
  String grpValue;
  DateTime date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          backgroundcolour /* Color(0XFF222831) */ /*3. Color(0XFF1b262c) */,
      appBar: AppBar(
        backgroundColor:
            appBarColour /*3. Color(0XFF0f4c75) */ /* 2.Color(0XFF52057b) */ /*1. Color(0XFF38B0DE) */,
        centerTitle: true,
        title: Text(
          "Brand Name",
          style: TextStyle(
            color: fontColour,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Stock Transfer",
                style: TextStyle(
                  color:
                      titleColour /* Color(0XFF00adb5) */ /* 3.Color(0XFFbbe1fa) */ /* 2.Color(0XFF892cdc) */ /*1. Color(0XFF009ACD) */,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            customDropDown(
              "From",
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: from,
                  items: <String>["A", "B", "C", "D"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ));
                  }).toList(),
                  hint: Text(
                    "Select From",
                    style: TextStyle(color: fontColour /* 1.Colors.black */),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      from = value;
                    });
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color:
                        iconColour /* 3.Color(0XFFbbe1fa) */ /* 2.Color(0XFFbc6ff1) */ /*1. Color(0XFF009ACD) */,
                  ),
                  style: TextStyle(
                      color: fontColour /*1. Colors.black */,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  dropdownColor: dropDownListColour,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            customDropDown(
              "To",
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: to,
                  items: <String>["A", "B", "C", "D"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ));
                  }).toList(),
                  hint: Text(
                    "Select To",
                    style: TextStyle(color: fontColour /*1. Colors.black */),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      to = value;
                    });
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color:
                        iconColour /* 3.Color(0XFFbbe1fa) */ /*2. Color(0XFFbc6ff1) */ /*1. Color(0XFF009ACD) */,
                  ),
                  style: TextStyle(
                      color: fontColour /* Colors.black */,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  dropdownColor: dropDownListColour,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            customDropDown(
              "Category",
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: category,
                  items: <String>["A", "B", "C", "D"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ));
                  }).toList(),
                  hint: Text(
                    "Select category",
                    style: TextStyle(color: fontColour /* 1.Colors.black */),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      category = value;
                    });
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color:
                        iconColour /* 3.Color(0XFFbbe1fa) */ /* 2.Color(0XFFbc6ff1) */ /*1. Color(0XFF009ACD) */,
                  ),
                  style: TextStyle(
                      color: fontColour /*1. Colors.black */,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  dropdownColor: dropDownListColour,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            customDropDown(
              "Product Name",
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: productName,
                  items: <String>["A", "B", "C", "D"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ));
                  }).toList(),
                  hint: Text(
                    "Select Product Name",
                    style: TextStyle(color: fontColour /*1. Colors.black */),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      productName = value;
                    });
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color:
                        iconColour /* 3.Color(0XFFbbe1fa) */ /* 2.Color(0XFFbc6ff1) */ /* 1.Color(0XFF009ACD) */,
                  ),
                  style: TextStyle(
                      color: fontColour /*1. Colors.black */,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  dropdownColor: dropDownListColour,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            customDropDown(
              "Product Quantity",
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: productQuantity,
                  items: <String>["A", "B", "C", "D"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ));
                  }).toList(),
                  hint: Text(
                    "Select Product Quantity",
                    style: TextStyle(color: fontColour /* Colors.black */),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      productQuantity = value;
                    });
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color:
                        iconColour /* 3.Color(0XFFbbe1fa) */ /* 2.Color(0XFFbc6ff1) */ /*1. Color(0XFF009ACD) */,
                  ),
                  style: TextStyle(
                      color: fontColour /* Colors.black */,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  dropdownColor: dropDownListColour /*1. Colors.white */,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color:
                          dropDownBorderColour /* 3.Color(0XFF3282b8) */ /*2. Color(0XFF892cdc) */ /*1. Color(0XFFAFEEEE) */,
                      width: 2.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: '1',
                        groupValue: grpValue,
                        onChanged: (value) {
                          setState(() {
                            grpValue = value;
                          });
                        },
                        activeColor:
                            radioButtonActiveColour /*1. Color(0XFF0EBFE9) */,
                      ),
                      Text(
                        "Case Wise",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: fontColour),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: '2',
                        groupValue: grpValue,
                        onChanged: (value) {
                          setState(() {
                            grpValue = value;
                          });
                        },
                        visualDensity: VisualDensity(horizontal: 0.0),
                        activeColor:
                            radioButtonActiveColour /* 3.Color(0XFFbbe1fa) */ /* 2.Color(0XFFbc6ff1) */ /*1. Color(0XFF0EBFE9) */,
                      ),
                      Text(
                        "Case Loose",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: fontColour),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "Date Of Purchase",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: fontColour),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color:
                            dropDownBorderColour /* 3.Color(0XFF3282b8) */ /* 2.Color(0XFF892cdc) */ /* 1.Color(0XFFAFEEEE) */,
                        width: 2.0,
                      )),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onTap: () async {
                      final _testDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(DateTime.now().year - 5),
                        lastDate: DateTime(DateTime.now().year + 5),
                      );
                      if (_testDate == null) return;
                      setState(() {
                        date = _testDate;
                      });
                    },
                    title: date == null
                        ? Text(
                            "Select Date",
                            style: TextStyle(
                                color: fontColour /* Colors.black45 */),
                          )
                        : Text(
                            "${DateFormat('dd/MM/yyyy').format(date)}",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, color: fontColour),
                          ),
                    trailing: Icon(
                      Icons.date_range_outlined,
                      color:
                          iconColour /*3. Color(0XFFbbe1fa) */ /*2. Color(0XFF892cdc) */ /* 1.Color(0XFF0EBFE9) */,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              /* margin: EdgeInsets.symmetric(/* horizontal: 30, */ vertical: 20), */

              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(10),
                  padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                  /* shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))), */
                ),
                child: Container(
                  padding: const EdgeInsets.all(0),
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.06,
                  /* width: MediaQuery.of(context).size.width * 0.80, */
                  decoration: BoxDecoration(
                    gradient:
                        buttonGradient, /* LinearGradient(
                      colors:  [Color(0xFF00CDCD), Color(0XFF008080)]/*2. [Color(0xFF52057b), Color(0XFFbc6ff1)] *//*1. [Color(0xFF97FFFF), Color(0XFF00CDCD)] */,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ), */
                    /* borderRadius: BorderRadius.circular(30), */
                  ),
                  child: Text(
                    "Submit",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: fontColour, fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

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
