import 'package:flutter/material.dart';
import 'package:sample3/color/colour.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  var productCategorie;
  var productSubcategorie;
  
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
                "Add Product",
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
              "Product Category",
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: productCategorie,
                  items: <String>["Cloths", "Electronic", "Office", "Food"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ));
                  }).toList(),
                  hint: Text(
                    "Select Product Categorie",
                    style: TextStyle(color: fontColour /* Colors.black */),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      productCategorie = value;
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
              "Product SubCategories",
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: productSubcategorie,
                  items: <String>["Men", "Women", "Kids"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ));
                  }).toList(),
                  hint: Text(
                    "Select Product SubCategorie",
                    style: TextStyle(color: fontColour /* Colors.black */),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      productSubcategorie = value;
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
            customTextFormField(
                "Product Name", "Enter Product Name", TextInputType.text),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            customTextFormField(
                "Quantity", "Enter Quantity", TextInputType.number),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            customTextFormField(
                "Proof Litre", "Enter Proof Litre", TextInputType.number),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            customTextFormField(
                "ML per Bottle", "Enter ML per Bottle", TextInputType.number),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            customTextFormField(
                "Bulk Litre", "Enter Bulk Litre", TextInputType.number),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            customTextFormField("Sale Rate(Billing)",
                "Enter Sale Rate(Billing)", TextInputType.number),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            customTextFormField("Sale Rate(Actual)", "Enter Sale Rate(Actual)",
                TextInputType.number),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            customTextFormField(
                "Sequence Number", "Enter Sequence Number", TextInputType.text),
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
                  /*  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          buttonGradient /* LinearGradient(
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

  Widget customTextFormField(
      String labelText, String hintText, TextInputType keyboardType) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        style: TextStyle(color: fontColour /* Colors.black */),
        onFieldSubmitted: (value) => print(value),
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
          child: textFormField
        ),
      ],
    );
  }
  
}


