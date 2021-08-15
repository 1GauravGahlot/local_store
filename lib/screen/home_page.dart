import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sample3/color/colour.dart';
import 'package:sample3/screen/add_product.dart';
import 'package:sample3/screen/create_shop.dart';
import 'package:sample3/screen/purchase_model.dart';
import 'package:sample3/screen/qr_scanner.dart';
import 'package:sample3/screen/report_screen.dart';
import 'package:sample3/screen/stock_transfer.dart';
import './report_screen2.dart';
import 'package:sample3/screen/test.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  PersistentBottomSheetController _controller;
  var _selectedValue;
  DateTimeRange _dateRange;
  /* void _saveDate(DateTimeRange passedDate) {
    _controller.setState(() {
      _dateRange = passedDate;
    });
  }

  void _saveDropDownItem(String dropDownItem) {
    _controller.setState(() {
      _selectedValue = dropDownItem;
    });
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0XFF222831),
      appBar: AppBar(
        backgroundColor: Color(0XFF35586C),
        centerTitle: true,
        title: Text(
          "Brand Name",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle_outlined),
            onPressed: () {},
            iconSize: 35,
            color: Colors.white70,
          )
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CreateShop(),
                    ));
                  },
                  child: newCustomContainer(Icons.add,
                      "Create Shop") /* customContainer(Color(0XFFBFEFFF), Color(0XFFb5e48c),
                    Icons.add, "Create Shop"), */
                  ),
              GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddProduct(),
                      )),
                  child: newCustomContainer(
                      Icons.add_shopping_cart_rounded, "Add Product"))
              /* customContainer(Color(0XFFB2D39E), Color(0XFFc38e70),
                  Icons.add_shopping_cart_rounded, "Add Product") */
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /*  customContainer(Color(0XFFE8FCF9), Color(0XFFffc8dd),
                  Icons.keyboard_arrow_down_rounded, "Purchase Modal"),
              customContainer(Color(0XFFEBEBFA), Color(0XFFa2d2ff), Icons.sync,
                  "Stock Transfer"), */
              GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PurchaseModal(),
                      )),
                  child: newCustomContainer(
                      Icons.keyboard_arrow_down_rounded, "Purchase Modal")),
              GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => StockTransfer(),
                      )),
                  child: newCustomContainer(Icons.sync, "Stock Transfer")),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /* FloatingActionButton.extended(
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.white38, width: 3.0)),
                backgroundColor: Color(0XFFf7cad0),
                icon: Icon(
                  Icons.message_outlined,
                  color: Color(0XFFc77dff),
                  size: 30,
                ),
                onPressed: () {},
                label: Text("Another button"),
              ),
              FloatingActionButton.extended(
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.white38, width: 3.0)),
                backgroundColor: Color(0XFFfff8a5),
                icon: Icon(
                  Icons.qr_code_scanner_rounded,
                  color: Color(0XFFff7aa2),
                  size: 30,
                ),
                onPressed: () {},
                label: Text("Scan Product"),
              ), */
              GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter myState) =>
                                  bottomReportSearch(myState, context),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      elevation: 150,
                      isScrollControlled: true,
                      backgroundColor: backgroundcolour,
                    );
                    /* _controller = _scaffoldKey.currentState.showBottomSheet(
                      (context) => ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: backgroundcolour,
                            /* borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ), */
                            border: Border(
                              top: BorderSide(
                                color: Colors.grey,
                                width: 3.0,
                              ),
                            ),
                          ),
                          child: bottomReportSearch(),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      elevation: 150,
                      clipBehavior: Clip.antiAlias,
                    ); */
                  },
                  /* Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Report(),
                    )), */
                  child: newCustomContainer(
                      Icons.message_outlined, "Generate Report")),
              GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => QrScanner(),
                      )),
                  child: newCustomContainer(
                      Icons.qr_code_scanner_rounded, "Scan Product")),
            ],
          ),
        ],
      ),
    );
  }

  Widget customContainer(Color containerColour, Color iconColour,
      IconData iconType, String containerName) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.17,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: containerColour,
          border: Border.all(color: Colors.white38, width: 3.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              iconType,
              color: iconColour,
              size: 40,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            containerName,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  Widget newCustomContainer(IconData icon, String containerName) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.25,
          /* margin: EdgeInsets.symmetric(horizontal: 25), */
          decoration: BoxDecoration(
              border: Border.all(
                  color: Color(0XFF37FDFC).withOpacity(0.2), width: 1.0),
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [themeColorDark.withOpacity(0.050), Colors.black],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54
                      .withOpacity(0.6) /* Colors.black.withOpacity(0.8) */,
                  offset: Offset(8, 8),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Color(0XFF37FDFC).withOpacity(
                      0.2) /* Colors.blueAccent.withOpacity(0.2) */ /* themeColorLight.withOpacity(0.1) */,
                  offset: Offset(-8, -8),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
              ]),
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.242,
              width: MediaQuery.of(context).size.width * 0.242,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.7),
                      backgroundcolour /* Color(0XFF091F05) */
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    icon,
                    color: Color(0XFF37FDFC),
                    size: 35,
                  ),
                ),
              ),
            ),
          ),
        ),
        /* SizedBox(height: MediaQuery.of(context).size.height * 0.01,), */
        Text(containerName,
            style: TextStyle(
                color: /* Color(0XFFF8F8FF) */ Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500)),
      ],
    );
  }

  Widget bottomReportSearch(StateSetter mystate, BuildContext contexts) {
    return SingleChildScrollView(
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
            "Generate Report",
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
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Select Date",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: dropDownBorderColour, width: 2.0),
                  ),
                  child: Center(
                    child: Text(
                      _dateRange == null
                          ? "From"
                          : "${DateFormat('dd/MM/yyyy').format(_dateRange.start)}",
                      style: TextStyle(
                          color: fontColour,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Icon(
                  Icons.chevron_right_rounded,
                  color: iconColour,
                  size: 35,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: dropDownBorderColour, width: 2.0),
                  ),
                  child: Center(
                      child: Text(
                    _dateRange == null
                        ? "To"
                        : "${DateFormat('dd/MM/yyyy').format(_dateRange.end)}",
                    style: TextStyle(
                      color: fontColour,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
                IconButton(
                  icon: Icon(
                    Icons.date_range_outlined,
                    color: iconColour,
                    size: 30,
                  ),
                  onPressed: () async {
                    final initialDateTange = DateTimeRange(
                      start: DateTime.now(),
                      end: DateTime.now().add(Duration(hours: 24 * 3)),
                    );
                    final dateRange = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(DateTime.now().year - 5),
                      lastDate: DateTime(DateTime.now().year + 5),
                      initialDateRange: _dateRange ?? initialDateTange,
                      builder: (context, child) => Theme(
                        data: ThemeData(
                            appBarTheme: AppBarTheme(
                              backgroundColor: appBarColour,
                            ),
                            colorScheme: ColorScheme.light(
                              onPrimary: Colors.white,
                              primary: radioButtonActiveColour,
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: child,
                        ),
                      ),
                    );
                    if (dateRange == null) return;
                    mystate(() {
                      _dateRange = dateRange;
                    });
                    /* setState(() {
                      /* _saveDate(dateRange); */
                      _dateRange = dateRange;
                    }); */
                  },
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        customDropDown(
          "Select Caterogy",
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selectedValue,
              items: <String>["Android", "IOS", "FLUTTER", "JAVA"]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem(
                    value: value,
                    child: Text(
                      value,
                    ));
              }).toList(),
              hint: Text(
                "Select Categories",
                style: TextStyle(color: Colors.white),
              ),
              onChanged: (String value) {
                /* setState(() {
                  _selectedValue = value;
                }); */
                mystate(() {
                  _selectedValue = value;
                });

                /* _saveDropDownItem(value); */
              },
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: iconColour,
              ),
              style: TextStyle(color: Colors.white),
              dropdownColor: dropDownListColour,
            ),
          ),
        ),
        /* ElevatedButton(onPressed: () => _saveDate(), child: Text("Click")) */
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: buttonGradient,
          ),
          child: ElevatedButton(
            onPressed: () {
              /* _controller.close(); */
              Navigator.of(contexts).pop();
              _dateRange == null || _selectedValue == null
                  ? print("Select  all fields: " + "$_selectedValue")
                  : Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return ReportScreen2(_dateRange, _selectedValue);
                      }),
                    );
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
      ],
    ));
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
