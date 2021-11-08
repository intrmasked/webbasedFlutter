import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_based_app/Admission.dart';
import 'package:web_based_app/Tack.dart';
import 'package:web_based_app/payment.dart';

import 'Adminitration.dart';
import 'Tack.dart';
import 'nivgator.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  drawer: NavigationDrawerWidget(),
      //  appBar: AppBar(
      //  title: Text(""),
      //  backgroundColor: Colors.pinkAccent,
      //   ),
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
                            'My child details',
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
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
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
                                      color: Color(0xFFEC407A),
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white70,
                                          spreadRadius: 5,
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      'My Child Details',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Add()));
                                  },
                                ),
                              ],
                            ),
                          ),
                        ]),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                child: InkWell(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 8),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEC407A),
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white70,
                                          spreadRadius: 5,
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      'Payment',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Payment()));
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
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
                                'TRACKING',
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Container(
                                      child: InkWell(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 8),
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEC407A),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white70,
                                                spreadRadius: 5,
                                                blurRadius: 10,
                                              ),
                                            ],
                                          ),
                                          child: Text(
                                            'Tracking',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Track()));
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
