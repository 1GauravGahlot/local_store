import 'package:flutter/material.dart';
import 'package:sample3/color/colour.dart';

class CreateShop extends StatefulWidget {
  @override
  _CreateShopState createState() => _CreateShopState();
}

class _CreateShopState extends State<CreateShop> {
  var _selectedValue;
  var groupCode;
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
            color: fontColour /* Colors.white */,
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
                "Create Shop",
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
            // 1.
            customDropDown(
              "Name Of Owner",
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _selectedValue,
                  items: <String>[
                    "Advitiya Sujeet",
                    "Alagesan Poduri",
                    "Amrish Ilyas",
                    "Aditi Musunur"
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ));
                  }).toList(),
                  hint: Text(
                    "Select Name",
                    style: TextStyle(color: fontColour /* Colors.black */),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _selectedValue = value;
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
            //2.

            customDropDown(
              "Group Code",
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: groupCode,
                  items: <String>["20152", "78965", "74563", "21479"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ));
                  }).toList(),
                  hint: Text(
                    "Select Group Code",
                    style: TextStyle(color: fontColour /* Colors.black */),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      groupCode = value;
                    });
                  },
                  disabledHint: Text(
                    "Loading...",
                    style: TextStyle(color: Colors.grey),
                  ),                  
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: iconColour /* Color(0XFF009ACD) */,
                  ),
                  style: TextStyle(
                      color: fontColour /* Colors.black */,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  dropdownColor: dropDownListColour /* Colors.white */,
                  onTap: () {},
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            //3.
            customTextFormField("Shop/Ward Number", "Enter Shop/Ward Number",
                TextInputType.number),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            
            //4.
            customTextFormField(
                "Location", "Enter Location", TextInputType.streetAddress),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            //5.
            customTextFormField(
                "City", "Enter City", TextInputType.streetAddress),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),

            //6.
            customTextFormField(
                "Shop Code", "Enter Shop Code", TextInputType.text),

            /*  SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              /* margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20), */
              margin: EdgeInsets.symmetric(vertical: 0),
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
            ), */
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          gradient: buttonGradient,
        ),
        child: ElevatedButton(
          onPressed: () {},
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
              "Submit",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }

  //Container With TextFormField

  Widget customTextFormField(
      String labelText, String hintText, TextInputType keyboardType) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
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
