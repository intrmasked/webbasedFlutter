import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_based_app/Admission.dart';
import 'package:web_based_app/Homepage.dart';

import 'nivgator.dart';

class Track extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: NavigationDrawerWidget(),
      // appBar: AppBar(
      //   title: Text(""),
      //   backgroundColor: Colors.pinkAccent,
      //  ),
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
                            'Tracking',
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
                          height: 480,
                          width: 325,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Tracking",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Expanded(
                                child: Container(
                                  width: 250,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: "Child Id Card",
                                      suffixIcon: Icon(
                                        FontAwesomeIcons.idCard,
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 8),
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
                                    'Find Location',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Expanded(
                                child: Container(
                                  width: 250,
                                  child: Text(
                                    "Just type Child_Id for findout location"
                                    "You can findout your child location by"
                                    "selected your child id and takecare the,",
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
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
          ),
        ),
      ),
    );
  }
}
