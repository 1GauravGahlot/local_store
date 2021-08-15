import 'package:flutter/material.dart';
import 'package:sample3/color/colour.dart';
import 'package:sample3/screen/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Brand Name",
      debugShowCheckedModeBanner: false,
      // GENERATE REPORT
      home: LoginScreen(),
      theme: ThemeData(
        unselectedWidgetColor: Colors.white,
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(radioButtonActiveColour),
          crossAxisMargin: 1,
          mainAxisMargin: 5,
          minThumbLength: 5,
        ),
      ),
    );
  }
}
