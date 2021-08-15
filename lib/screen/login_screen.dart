import 'package:flutter/material.dart';
import 'package:sample3/color/colour.dart';
import 'package:sample3/screen/home_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var passwordController = TextEditingController();
  var _isPasswordSecure = true;
  passwordSecurity() {
    setState(() {
      _isPasswordSecure = !_isPasswordSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolour,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/images/top1.png",
              color: Color(0XFF00FFFF),
            ),
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/images/top2.png",
              color: Color(0XFF00C5CD),
            ),
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/bottom1.png",
                color: Color(0XFF00FFFF)),
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/bottom2.png",
                color: Color(0XFF00FFFF)),
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: titleColour /* Color(0XFF009ACD) */,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                /* alignment: Alignment.center, */
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  style: TextStyle(color: fontColour /* Colors.black */),
                  cursorColor: fontColour /* Colors.grey.shade700 */,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            color:
                                Colors.blueGrey[800] /* Colors.grey.shade100 */,
                            width: 2.0)),
                    fillColor: backgroundcolour /* Colors.white */,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.verified_user_outlined,
                      color: Color(0XFF33A1C9),
                    ),
                    hintText: "Enter your email",
                    hintStyle: TextStyle(
                      color: fontColour /* Colors.black38 */,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            color:
                                radioButtonActiveColour /* Color(0XFF0198E1) */,
                            width: 3.0)),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                /* alignment: Alignment.center, */
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: _isPasswordSecure,
                  style: TextStyle(color: fontColour /* Colors.black */),
                  cursorColor: fontColour /* Colors.grey.shade700 */,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            color: Colors.blueGrey[
                                800] /* Colors.grey.shade800 */ /* Colors.grey.shade100 */,
                            width: 2.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    fillColor: backgroundcolour /* Colors.white */,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.chevron_right_rounded,
                      color: Color(0XFF33A1C9),
                      size: 35,
                    ),
                    suffixIcon: passwordController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            icon: Icon(
                              _isPasswordSecure
                                  ? Icons.lock_outline_rounded
                                  : Icons.lock_open_rounded,
                              color: Color(0XFF33A1C9),
                            ),
                            onPressed: () => passwordSecurity(),
                          ),
                    hintText: "Enter your password",
                    hintStyle: TextStyle(
                      color: fontColour /* Colors.black38 */,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            color:
                                radioButtonActiveColour /* Color(0XFF0198E1) */,
                            width: 3.0)),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                /* height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.80, */
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(10),
                    padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(0),
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.80,
                    decoration: BoxDecoration(
                      gradient: buttonGradient,
                      /* LinearGradient(
                    colors: [Color(0xFF0276FD), Color(0XFFC6E2FF)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ), */
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
