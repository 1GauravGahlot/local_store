import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sample3/color/colour.dart';

class PurchaseModal extends StatefulWidget {
  @override
  _PurchaseModalState createState() => _PurchaseModalState();
}

class _PurchaseModalState extends State<PurchaseModal> {
  var nameOwner;
  var shopNumber;
  var category;
  var productName;
  var quantity;
  var value;
  String grpValue;
  DateTime date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolour,
      appBar: AppBar(
        backgroundColor: appBarColour /* Color(0XFF38B0DE) */,
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
                "Purchase Modal",
                style: TextStyle(
                  color: titleColour /* Color(0XFF009ACD) */,
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
              "Name Of Owner",
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: nameOwner,
                  items: <String>["A", "B", "C", "D"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ));
                  }).toList(),
                  hint: Text(
                    "Select Name Of Owner",
                    style: TextStyle(color: fontColour /* Colors.black */),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      nameOwner = value;
                    });
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: iconColour /* Color(0XFF009ACD) */,
                  ),
                  style: TextStyle(
                      color: fontColour /* Colors.black */,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  dropdownColor: dropDownListColour /* Colors.white */,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            customDropDown(
              "Shop Number",
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: shopNumber,
                  items: <String>["101", "102", "103", "104"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ));
                  }).toList(),
                  hint: Text(
                    "Select Shop Number",
                    style: TextStyle(color: fontColour /* Colors.black */),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      shopNumber = value;
                    });
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: iconColour /* Color(0XFF009ACD) */,
                  ),
                  style: TextStyle(
                      color: fontColour /* Colors.black */,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  dropdownColor: dropDownListColour /* Colors.white */,
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
                    "Select Category",
                    style: TextStyle(color: fontColour /* Colors.black */),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      category = value;
                    });
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: iconColour /* Color(0XFF009ACD) */,
                  ),
                  style: TextStyle(
                      color: fontColour /* Colors.black */,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  dropdownColor: dropDownListColour /* Colors.white */,
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
                  items: <String>[
                    "Fast Food",
                    "Sauce",
                    "Whole Wheat",
                    "Beverage"
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ));
                  }).toList(),
                  hint: Text(
                    "Select Product Name",
                    style: TextStyle(color: fontColour /* Colors.black */),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      productName = value;
                    });
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: iconColour /* Color(0XFF009ACD) */,
                  ),
                  style: TextStyle(
                      color: fontColour /* Colors.black */,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  dropdownColor: dropDownListColour /* Colors.white */,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            customDropDown(
              "Quantity",
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: quantity,
                  items: <String>["5", "10", "15", "20"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ));
                  }).toList(),
                  hint: Text(
                    "Select Quantity",
                    style: TextStyle(color: fontColour /* Colors.black */),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      quantity = value;
                    });
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: iconColour /* Color(0XFF009ACD) */,
                  ),
                  style: TextStyle(
                      color: fontColour /* Colors.black */,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  dropdownColor: dropDownListColour /* Colors.white */,
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
                      color: dropDownBorderColour /* Color(0XFFAFEEEE) */,
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
                            radioButtonActiveColour /* Color(0XFF0EBFE9) */,
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
                            radioButtonActiveColour /* Color(0XFF0EBFE9) */,
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
                        color: dropDownBorderColour /* Color(0XFFAFEEEE) */,
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
                            "Select Date Of Purchase",
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
                      color: iconColour /* Color(0XFF0EBFE9) */,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            customTextFormField(
                "Bill Number", "Enter Bill Number", TextInputType.text),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              /* margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20), */
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
                      colors: [Color(0xFF97FFFF), Color(0XFF00CDCD)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ), */
                    /* borderRadius: BorderRadius.circular(30), */
                  ),
                  child: Text(
                    "Submit",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  var test;
  Widget customTextFormField(
      String labelText, String hintText, TextInputType keyboardType) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        /* onChanged: (value) => test = value, */
        /* onEditingComplete: () => print("$test"), */
        onFieldSubmitted: (value) => print(value),
        style: TextStyle(color: fontColour /* Colors.black */),
        cursorColor: fontColour /* Colors.grey.shade700 */,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: backgroundcolour /* Colors.white */)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: titleColour.withOpacity(0.5) /* Color(0XFF00CDCD) */)),
          labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: fontColour /* Colors.black */,
              height: MediaQuery.of(context).size.height * 0.001),
          labelText: labelText,
          hintText: hintText,
          hintStyle: TextStyle(
            color: fontColour /* Colors.black38 */,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.0,
          ),
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
                    color: dropDownBorderColour /* Color(0XFFAFEEEE) */,
                    width: 2.0)),
            child: textFormField),
      ],
    );
  }
}
