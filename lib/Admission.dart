import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Tack.dart';
import 'nivgator.dart';

class Admission extends StatelessWidget {
  const Admission({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: NavigationDrawerWidget(),
      //  appBar: AppBar(
      //   title: Text(""),
      //   backgroundColor: Colors.pinkAccent,
      //   ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFEC407A), Color(0xFFEF5350)])),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 80),
                Text(""),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: SingleChildScrollView(
                          child: Container(
                            height: 480,
                            width: 325,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 40),
                                  Text(
                                    "Payment",
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        alignment: Alignment.centerRight,
                                        child: TextFormField(
                                          textAlign: TextAlign.center,
                                          decoration: const InputDecoration(
                                            labelText: 'Student Name *',
                                          ),
                                          onSaved: (String? value) {},
                                          validator: (String? value) {
                                            return (value != null &&
                                                    value.contains('@'))
                                                ? 'Do not use the @ char.'
                                                : null;
                                          },
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        alignment: Alignment.center,
                                        child: TextFormField(
                                          textAlign: TextAlign.center,
                                          decoration: const InputDecoration(
                                            labelText: 'Roll Number *',
                                          ),
                                          onSaved: (String? value) {},
                                          validator: (String? value) {
                                            return (value != null &&
                                                    value.contains('@'))
                                                ? 'Do not use the @ char.'
                                                : null;
                                          },
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        alignment: Alignment.centerRight,
                                        child: TextFormField(
                                          textAlign: TextAlign.center,
                                          decoration: const InputDecoration(
                                            labelText: 'Father Name *',
                                          ),
                                          onSaved: (String? value) {},
                                          validator: (String? value) {
                                            return (value != null &&
                                                    value.contains('@'))
                                                ? 'Do not use the @ char.'
                                                : null;
                                          },
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        alignment: Alignment.center,
                                        child: TextFormField(
                                          textAlign: TextAlign.center,
                                          decoration: const InputDecoration(
                                            labelText: 'Total Fee *',
                                          ),
                                          onSaved: (String? value) {},
                                          validator: (String? value) {
                                            return (value != null &&
                                                    value.contains('@'))
                                                ? 'Do not use the @ char.'
                                                : null;
                                          },
                                        )),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 130,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                gradient: LinearGradient(
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                    colors: [
                                                      Color(0xFFEC407A),
                                                      Color(0xFFEF5350)
                                                    ])),
                                            child: Padding(
                                              padding: EdgeInsets.all(12),
                                              child: Text("Paid Payment"),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  gradient: LinearGradient(
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
                                                      colors: [
                                                        Color(0xFFEC407A),
                                                        Color(0xFFEF5350)
                                                      ])),
                                              child: Padding(
                                                padding: EdgeInsets.all(12),
                                                child: Text("Balance"),
                                              ),
                                            ))
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, right: 50),
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
                                SizedBox(height: 40),
                                Text(
                                  "Fee Update",
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      alignment: Alignment.centerRight,
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        decoration: const InputDecoration(
                                          labelText: 'Student Name *',
                                        ),
                                        onSaved: (String? value) {},
                                        validator: (String? value) {
                                          return (value != null &&
                                                  value.contains('@'))
                                              ? 'Do not use the @ char.'
                                              : null;
                                        },
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        decoration: const InputDecoration(
                                          labelText: 'Roll Number *',
                                        ),
                                        onSaved: (String? value) {},
                                        validator: (String? value) {
                                          return (value != null &&
                                                  value.contains('@'))
                                              ? 'Do not use the @ char.'
                                              : null;
                                        },
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        decoration: const InputDecoration(
                                          labelText: 'Father Name*',
                                        ),
                                        onSaved: (String? value) {},
                                        validator: (String? value) {
                                          return (value != null &&
                                                  value.contains('@'))
                                              ? 'Do not use the @ char.'
                                              : null;
                                        },
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        decoration: const InputDecoration(
                                          labelText: 'Fee Paid*',
                                        ),
                                        onSaved: (String? value) {},
                                        validator: (String? value) {
                                          return (value != null &&
                                                  value.contains('@'))
                                              ? 'Do not use the @ char.'
                                              : null;
                                        },
                                      )),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              Color(0xFFEC407A),
                                              Color(0xFFEF5350)
                                            ])),
                                    child: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: Text("Compelte"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, right: 50),
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
                                  height: 40,
                                ),
                                Text(
                                  "Fee Installments",
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        decoration: const InputDecoration(
                                          labelText: 'Student Name*',
                                        ),
                                        onSaved: (String? value) {},
                                        validator: (String? value) {
                                          return (value != null &&
                                                  value.contains('@'))
                                              ? 'Do not use the @ char.'
                                              : null;
                                        },
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        decoration: const InputDecoration(
                                          labelText: 'No. Of Instaments*',
                                        ),
                                        onSaved: (String? value) {},
                                        validator: (String? value) {
                                          return (value != null &&
                                                  value.contains('@'))
                                              ? 'Do not use the @ char.'
                                              : null;
                                        },
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        decoration: const InputDecoration(
                                          labelText: 'Extra Charges*',
                                        ),
                                        onSaved: (String? value) {},
                                        validator: (String? value) {
                                          return (value != null &&
                                                  value.contains('@'))
                                              ? 'Do not use the @ char.'
                                              : null;
                                        },
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        decoration: const InputDecoration(
                                          labelText: 'Total Amount*',
                                        ),
                                        onSaved: (String? value) {},
                                        validator: (String? value) {
                                          return (value != null &&
                                                  value.contains('@'))
                                              ? 'Do not use the @ char.'
                                              : null;
                                        },
                                      )),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Track()));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              Color(0xFFEC407A),
                                              Color(0xFFEF5350)
                                            ])),
                                    child: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: Text("Apply"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
