import 'package:flutter/material.dart';
import 'package:web_based_app/Adminitration.dart';
import 'package:web_based_app/Homepage.dart';
import 'package:web_based_app/Loginpage.dart';
import 'package:web_based_app/Tack.dart';
import 'package:web_based_app/payment.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Education';
    final email = 'Education@.com';
    final urlImage =
        'https://static.vecteezy.com/system/resources/thumbnails/000/618/919/small/1005-01.jpg';
    return Drawer(
      child: Material(
        color: Colors.pink,
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LoginPage(),
              )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  buildSearchField(),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Login In',
                    icon: Icons.people,
                    onClicked: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Home',
                    icon: Icons.people,
                    onClicked: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homepage()));
                    },
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Payment',
                    icon: Icons.favorite_border,
                    onClicked: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Payment()));
                    },
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'My Child Details',
                    icon: Icons.workspaces_outline,
                    onClicked: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Add()));
                    },
                  ),
                  const SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Tracking',
                    icon: Icons.account_tree_outlined,
                    onClicked: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Track()));
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.pinkAccent,
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
