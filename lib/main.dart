import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_based_app/Homepage.dart';
import 'Button.dart';
import 'Loginpage.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'nivgator.dart';

void main() {
  runApp(MaterialApp(
    builder: (context, widget) => ResponsiveWrapper.builder(
      BouncingScrollWrapper.builder(context, widget!),
      defaultScale: true,
      breakpoints: [
        ResponsiveBreakpoint.resize(450, name: MOBILE),
        ResponsiveBreakpoint.autoScale(800, name: TABLET),
        ResponsiveBreakpoint.autoScale(1000, name: TABLET),
        ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        ResponsiveBreakpoint.autoScale(2460, name: "4K"),
      ],
    ),
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      title: 'Education Details',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.pink,
      ),
      body: Builder(
        builder: (context) => Container(child: LoginPage()),
      ),
    );
  }
}
