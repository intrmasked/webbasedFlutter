import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_based_app/Admission.dart';
import 'package:web_based_app/Homepage.dart';

import 'nivgator.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  drawer: NavigationDrawerWidget(),
      //  appBar: AppBar(
      //   title: Text(""),
      //    backgroundColor: Colors.pinkAccent,
      //    ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFEC407A), Color(0xFFEF5350)])),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      width: 360,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PAYMENT',
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
                            "The problem that often arises has nothing to do with the timing of the description"
                            " but the amount of description that is needed, which will vary from a simple the bare room to paragraphs of detailed prose.",
                            style: TextStyle(
                                color: Colors.white24,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Expanded(
                        child: Container(
                          height: 520,
                          width: 325,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 250,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: "Student Name",
                                      suffixIcon: Icon(
                                        FontAwesomeIcons.idCard,
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 250,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: "Roll Number",
                                      suffixIcon: Icon(
                                        FontAwesomeIcons.pen,
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 250,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: "Father Name",
                                      suffixIcon: Icon(
                                        FontAwesomeIcons.graduationCap,
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 250,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: "Total Fee",
                                      suffixIcon: Icon(
                                        FontAwesomeIcons.calculator,
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 8),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              spreadRadius: 5,
                                              blurRadius: 9,
                                            ),
                                          ],
                                        ),
                                        child: Text(
                                          'Paid',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    InkWell(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 8),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              spreadRadius: 5,
                                              blurRadius: 9,
                                            ),
                                          ],
                                        ),
                                        child: Text(
                                          'Balance',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(children: [
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        width: 360,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'FEE UPDATE',
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
                              "The problem that often arises has nothing to do with the timing of the description"
                              " but the amount of description that is needed, which will vary from a simple the bare room to paragraphs of detailed prose.",
                              style: TextStyle(
                                  color: Colors.white24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Expanded(
                          child: Container(
                            height: 520,
                            width: 325,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 250,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: "Student Name",
                                        suffixIcon: Icon(
                                          FontAwesomeIcons.idCard,
                                          size: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 250,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: "Roll Number",
                                        suffixIcon: Icon(
                                          FontAwesomeIcons.pen,
                                          size: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 250,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: "Father Name",
                                        suffixIcon: Icon(
                                          FontAwesomeIcons.graduationCap,
                                          size: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 250,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: "Fee Paid",
                                        suffixIcon: Icon(
                                          FontAwesomeIcons.coins,
                                          size: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 23, top: 27),
                                    child: Container(
                                      width: 130,
                                      child: InkWell(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 8),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                spreadRadius: 5,
                                                blurRadius: 9,
                                              ),
                                            ],
                                          ),
                                          child: Text(
                                            'Compelte',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
              SizedBox(
                height: 40,
              ),
              Column(children: [
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        width: 360,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'FEE INSTALLMENTS',
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
                              "The problem that often arises has nothing to do with the timing of the description"
                              " but the amount of description that is needed, which will vary from a simple the bare room to paragraphs of detailed prose.",
                              style: TextStyle(
                                  color: Colors.white24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Expanded(
                          child: Container(
                            height: 520,
                            width: 325,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 250,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: "Student Name",
                                        suffixIcon: Icon(
                                          FontAwesomeIcons.idCard,
                                          size: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 250,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: "No. of installments",
                                        suffixIcon: Icon(
                                          FontAwesomeIcons.pen,
                                          size: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 250,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: "Extra Charge",
                                        suffixIcon: Icon(
                                          FontAwesomeIcons.cashRegister,
                                          size: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 250,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: "Total Fee",
                                        suffixIcon: Icon(
                                          FontAwesomeIcons.calculator,
                                          size: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 23, top: 27),
                                    child: Container(
                                      width: 80,
                                      child: InkWell(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 8),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                spreadRadius: 5,
                                                blurRadius: 9,
                                              ),
                                            ],
                                          ),
                                          child: Text(
                                            'Apply',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
