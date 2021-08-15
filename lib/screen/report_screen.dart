import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sample3/color/colour.dart';
import 'package:sample3/screen/report_screen2.dart';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  var _selectedValue;
  DateTimeRange _dateRange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: backgroundcolour,
      /*   body: DefaultTabController(
          length: 1,
          child: NestedScrollView(
            headerSliverBuilder: (context, bool innerBoxIsScrolled) {
              return <Widget>[ 
                SliverAppBar(
                  backgroundColor: appBarColour,
                  shadowColor: Color(0XFF696969),
                  elevation: 190.0,
                  floating: true,
                  pinned: true,                 
                  title: Text(
                    "Brand Name",
                    style: TextStyle(
                        color: fontColour,
                        letterSpacing: 2.0),
                  ),
                  centerTitle: true,
                  toolbarHeight: MediaQuery.of(context).size.height * 0.06,                  
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(89.8),
                                      child: TabBar(                        
                        unselectedLabelColor: Colors.red,
                        labelColor: Colors.white,
                        indicatorColor: Colors.transparent,
                        tabs: [
                         SizedBox(                           
                           height: MediaQuery.of(context).size.height * 0.09,
                           child: Row(                             
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Padding(
                                 padding: _dateRange == null ? const EdgeInsets.only(left: 20) : const EdgeInsets.all(0) ,
                                 child: GestureDetector(
                                    onTap: () async {
                                            final initialDateTange = DateTimeRange(
                                              start: DateTime.now(),
                                              end: DateTime.now()
                                                  .add(Duration(hours: 24 * 3)),
                                            );
                                            final dateRange = await showDateRangePicker(
                                              context: context,
                                              firstDate: DateTime(DateTime.now().year - 5),
                                              lastDate: DateTime(DateTime.now().year + 5),
                                              initialDateRange:
                                                  _dateRange ?? initialDateTange,
                                            );
                                            if (dateRange == null) return;
                                            setState(() {
                                              _dateRange = dateRange;
                                            });
                                          },
                                    child: Container(
                                       height: MediaQuery.of(context).size.height * 0.1,
                                       child: Tab(
                                        icon: Icon(Icons.date_range),
                                             text:
                                           _dateRange == null ? "Pick a date" :  "${DateFormat('dd/MM/yyyy').format(_dateRange.start)} - ${DateFormat('dd/MM/yyyy').format(_dateRange.end)} ",
                                    ),
                                     ),
                                 ),
                               ),                             
                            VerticalDivider(color: titleColour,thickness: 2.0,indent: 15,endIndent: 10,width: 20,),                           
                            Tab(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: dropDownBorderColour, width: 2),
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: DropdownButtonHideUnderline(
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
                                    hint: Text("Select Categories", style: TextStyle(color: Colors.white),),
                                    onChanged: (String value) {
                                      setState(() {
                                        _selectedValue = value;
                                      });
                                    },
                                    icon: Icon(Icons.keyboard_arrow_down_rounded, color: iconColour,),
                                    style: TextStyle(color: Colors.white),
                                    dropdownColor: dropDownListColour,                                 
                                  ),
                                ),
                              ),
                            ),
                            ],
                           ),
                         ),
                        ]),
                  ),
                ), */
      /* ];
            }, 
          ),
        )  */

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
                        border: Border.all(
                          color: dropDownBorderColour,
                          width: 2.0
                        ),
                      ),
                      child: Center(
                        child: Text(
                          _dateRange == null ? "From" : "${DateFormat('dd/MM/yyyy').format(_dateRange.start)}", 
                          style: TextStyle(color: fontColour, fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          ),
                    ),
                    Icon(Icons.chevron_right_rounded, color: iconColour, size: 35,),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: dropDownBorderColour,
                          width: 2.0
                        ),
                      ),
                      child: Center(
                        child: 
                        Text(
                          _dateRange == null ? "To" : "${DateFormat('dd/MM/yyyy').format(_dateRange.end)}",
                       style: TextStyle(color: fontColour, fontSize: 15, fontWeight: FontWeight.bold,),)),
                    ),
                    IconButton(
                        icon: Icon(Icons.date_range_outlined, color: iconColour,size: 30,), 
                        onPressed: () async {
                          
                          final initialDateTange = DateTimeRange(
                                              start: DateTime.now(),
                                              end: DateTime.now()
                                                  .add(Duration(hours: 24 * 3)),                                                  
                                            );
                                            final dateRange = await showDateRangePicker(                                                                                    
                                              context: context,                                              
                                              firstDate: DateTime(DateTime.now().year - 5),
                                              lastDate: DateTime(DateTime.now().year + 5),
                                              initialDateRange:
                                                  _dateRange ?? initialDateTange,
                                              builder: (context, child) => Theme(
                                                data: ThemeData(                                                  
                                                  appBarTheme: AppBarTheme(
                                                    backgroundColor: appBarColour,                                                                                                        
                                                  ),                                                  
                                                  colorScheme: ColorScheme.light(
                                                   onPrimary: Colors.white,
                                                   primary: radioButtonActiveColour,                                                   
                                                  )
                                                ), 
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                                                  ),
                                                  child: child,
                                                ),
                                                ),    
                                            );
                                            if (dateRange == null) return;
                                            setState(() {
                                              _dateRange = dateRange;
                                            });
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
                                    hint: Text("Select Categories", style: TextStyle(color: Colors.white),),
                                    onChanged: (String value) {
                                      setState(() {
                                        _selectedValue = value;
                                      });
                                    },
                                    icon: Icon(Icons.keyboard_arrow_down_rounded, color: iconColour,),
                                    style: TextStyle(color: Colors.white),
                                    dropdownColor: dropDownListColour,                                 

                                  ),
                                ),
                              ),                              
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
