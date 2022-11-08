import 'package:cars/screens/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../auth_controller.dart';

class Settings_page extends StatefulWidget {
  String email;
  Settings_page({Key? key, required this.email}) : super(key: key);

  @override
  State<Settings_page> createState() => _Settings_pageState();
}

class _Settings_pageState extends State<Settings_page> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        bottomNavigationBar: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
              backgroundColor: Theme.of(context).primaryColor,
              color: Color.fromRGBO(60, 64, 72, 1),
              activeColor: Color.fromRGBO(0, 171, 179, 1),
              tabBackgroundColor: Color.fromRGBO(178, 178, 178, 0.7),
              gap: 8,
              padding: EdgeInsets.all(16),
              tabs: [
                GButton(
                    icon: Icons.home,
                    text: 'Home',
                    textColor: Color.fromRGBO(0, 171, 179, 1),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WelcomePage(
                                  email: '',
                                )),
                      );
                    }),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Likes',
                  textColor: Color.fromRGBO(0, 171, 179, 1),
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                  textColor: Color.fromRGBO(0, 171, 179, 1),
                ),
                GButton(
                    icon: Icons.settings,
                    text: 'Settings',
                    textColor: Color.fromRGBO(0, 171, 179, 1),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Settings_page(
                                  email: '',
                                )),
                      );
                    }),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            Container(
              width: w,
              height: h * 0.35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/welcome.webp"),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.16,
                  ),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 124, 128, 131),
                    radius: 60,
                    backgroundImage: AssetImage("img/acar.webp"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  Text(
                    widget.email,
                    style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {
                AuthController.instance.logout();
              },
              child: Container(
                width: w * 0.4,
                height: h * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue.withOpacity(0.5),
                  /*image: DecorationImage(
                        image: AssetImage("img/welcome.webp"),
                        fit: BoxFit.cover)*/
                ),
                child: Center(
                  child: Text(
                    "Sign Out",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
