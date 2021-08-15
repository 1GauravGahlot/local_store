import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:sample3/color/colour.dart';

class ReportScreen2 extends StatefulWidget {
  DateTimeRange dateRange;
  var selectedDropDownValue;
  ReportScreen2(this.dateRange, this.selectedDropDownValue);

  @override
  _ReportScreen2State createState() => _ReportScreen2State();
}

class _ReportScreen2State extends State<ReportScreen2> {
  ScrollController _hideButtonController;
  var _isVisible;
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _isVisible = true;
    _hideButtonController = new ScrollController();
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_isVisible)
          setState(() {
            _isVisible = false;
            /* print("**** $_isVisible up"); */
          });
      }
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!_isVisible)
          setState(() {
            _isVisible = true;
            /* print("**** $_isVisible down"); */
          });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolour,
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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Scrollbar(
            controller: _hideButtonController,
            showTrackOnHover: true,
            radius: Radius.circular(50),
            thickness: 5.0,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              controller: _hideButtonController,
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.grey,
                  thickness: 2.0,
                );
              },
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    "Item $index",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 25),
                  ),
                  subtitle: Text(
                    "${widget.selectedDropDownValue}",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w300),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "₹ ${index * 100}",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                      Text(
                        "Purchase Date",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          _isVisible
              ? Positioned(
                  left: 0, right: 0, bottom: 0, child: bottomNavigationBar())
              : Container(
                  height: 0,
                  width: 0,
                )
          /*  Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  /* boxShadow: [
                    BoxShadow(color: Colors.black, spreadRadius: 5.0, blurRadius: 50.0)
                  ], */
                    borderRadius: BorderRadius.circular(90),
                    color: Colors.orange
                    ),
              ),
            ),
          ), */
        ],
      ),
    );
  }

  Widget bottomNavigationBar() {
    return /* Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
      child: */
        SizedBox(
      child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          decoration: BoxDecoration(
            gradient: buttonGradient,
            /* color: appBarColour, */
            /* borderRadius: BorderRadius.circular(30), */
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                  "${DateFormat('dd/MM/yyyy').format(widget.dateRange.start)} - ${DateFormat('dd/MM/yyyy').format(widget.dateRange.end)}",
                  style: TextStyle(
                      color: fontColour,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              VerticalDivider(
                color: fontColour,
                endIndent: 10,
                indent: 10,
                thickness: 2.0,
              ),
              Text(
                "${widget.selectedDropDownValue}",
                style: TextStyle(
                    color: fontColour,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )

          /* BottomNavigationBar(          
            backgroundColor: Colors.transparent,            
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white,), 
              label: "${DateFormat('dd/MM/yyyy').format(widget.dateRange.start)} To ${DateFormat('dd/MM/yyyy').format(widget.dateRange.end)}",
              
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.local_activity), label: 'Activity'),
             
            ],
          ), */
          ),
      /* ), */
    );
  }
}
