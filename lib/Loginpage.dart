import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_based_app/Admission.dart';
import 'package:web_based_app/Homepage.dart';

import 'nivgator.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   drawer: NavigationDrawerWidget(),
      //   appBar: AppBar(
      //   title: Text(""),
      //   backgroundColor: Color(0xFFEC407A),
      //   ),
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFFEC407A), Color(0xFFEF5350)])),
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 8),
          children: [Menu(), Body()],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Education Deatils",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _menuItem(title: 'Sign Up', isActive: true),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 5,
                          blurRadius: 9,
                        ),
                      ],
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _menuItem({String title = 'Title Menu', isActive = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 75),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          children: [
            Text(
              '$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.deepPurple : Colors.grey,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            isActive
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }

  Widget _registerButton() {
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 5,
              blurRadius: 9,
            ),
          ],
        ),
        child: Text(
          'Register',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
      ),
      onTap: () {
        Homepage();
      },
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 360,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Education Details',
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "If you don't have an account",
                  style: TextStyle(
                      color: Colors.white30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "You can",
                      style: TextStyle(
                          color: Colors.white54, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        print(MediaQuery.of(context).size.width);
                      },
                      child: Text(
                        "Register here!",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 6),
            child: Container(
              width: 320,
              child: _formLogin(),
            ),
          )
        ],
      ),
    );
  }

  Widget _formLogin() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter email or Phone number',
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: TextStyle(fontSize: 12),
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            counterText: 'Forgot password?',
            suffixIcon: Icon(
              Icons.visibility_off_outlined,
              color: Colors.grey,
            ),
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: TextStyle(fontSize: 12),
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 40),
        TextButton(
          onPressed: () {
            Homepage();
          },
          child: Container(
            alignment: Alignment.center,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white, blurRadius: 10, spreadRadius: 5),
                ],
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xFFEC407A), Color(0xFFEF5350)])),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                "Sign In",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(height: 40),
        Row(children: [
          Expanded(
            child: Divider(
              color: Colors.grey[300],
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Or continue with",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.grey[400],
              height: 50,
            ),
          ),
        ]),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              FontAwesomeIcons.facebook,
              color: Colors.white,
            ),
            Icon(FontAwesomeIcons.google, color: Colors.white),
            Icon(FontAwesomeIcons.microsoft, color: Colors.white),
          ],
        ),
      ],
    );
  }

  Widget _loginWithButton({required String image, bool isActive = false}) {
    return Container(
      width: 90,
      height: 70,
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 10,
                  blurRadius: 30,
                )
              ],
              borderRadius: BorderRadius.circular(15),
            )
          : BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey),
            ),
      child: Center(
          child: Container(
        decoration: isActive
            ? BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 15,
                  )
                ],
              )
            : BoxDecoration(),
      )),
    );
  }
}
