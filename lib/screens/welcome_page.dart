import 'package:cars/auth_controller.dart';
import 'package:cars/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cars/widgets/horizontal_listview.dart';
import 'package:cars/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../widgets/cars_grid.dart';
import 'package:cars/widgets/cars.dart';

class WelcomePage extends StatefulWidget {
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      // bottomNavigationBar: Container(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
      //     child: GNav(
      //       backgroundColor: Theme.of(context).primaryColor,
      //       color: Color.fromRGBO(60, 64, 72, 1),
      //       activeColor: Color.fromRGBO(0, 171, 179, 1),
      //       tabBackgroundColor: Color.fromRGBO(178, 178, 178, 0.7),
      //       gap: 8,
      //       padding: EdgeInsets.all(16),
      //       tabs: [
      //         GButton(
      //           icon: Icons.home,
      //           text: 'Home',
      //           textColor: Color.fromRGBO(0, 171, 179, 1),
      //         ),
      //         GButton(
      //           icon: Icons.favorite_border,
      //           text: 'Likes',
      //           textColor: Color.fromRGBO(0, 171, 179, 1),
      //         ),
      //         GButton(
      //           icon: Icons.search,
      //           text: 'Search',
      //           textColor: Color.fromRGBO(0, 171, 179, 1),
      //         ),
      //         GButton(
      //             icon: Icons.settings,
      //             text: 'Settings',
      //             textColor: Color.fromRGBO(0, 171, 179, 1),
      //             onPressed: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (context) => Settings_page(
      //                           email: '',
      //                         )),
      //               );
      //             }),
      //       ],
      //       selectedIndex: _selectedIndex,
      //       onTabChange: (index) {
      //         setState(() {
      //           _selectedIndex = index;
      //         });
      //       },
      //     ),
      //   ),
      // ),
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(0, 171, 179, 1),
        title: Text("Cars", style: MainHeading),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: new Drawer(
          backgroundColor: Color.fromRGBO(234, 234, 234, 1),
          child: ListView(children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("User"),
              accountEmail: Text(
                widget.email,
              ),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Color.fromRGBO(60, 64, 72, 1)),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(
                  Icons.home,
                  color: Color.fromRGBO(0, 171, 179, 1),
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(
                  Icons.person,
                  color: Color.fromRGBO(0, 171, 179, 1),
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Color.fromRGBO(0, 171, 179, 1),
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(
                  Icons.dashboard,
                  color: Color.fromRGBO(0, 171, 179, 1),
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(
                  Icons.favorite,
                  color: Color.fromRGBO(0, 171, 179, 1),
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Color.fromRGBO(0, 171, 179, 1),
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.red,
                ),
              ),
            ),
          ])),
      
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Available Brands"),
          ),
          HorizontalList(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Text("Recent Products"),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: CarsGrid(),
          // ),
          Container(
            height: 320,
            padding: const EdgeInsets.all(10.0),
            child: CarsGrid(),
          )
        ],
      ),
      // body: ListView(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         'Available Cars',
      //         style: MainHeading,
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: CarsGrid(),
      //     ),
      //     GestureDetector(
      //       onTap: () {
      //         AuthController.instance.logout();
      //       },
      //       child: Container(
      //         width: w * 0.4,
      //         height: h * 0.08,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(5),
      //           color: Color.fromRGBO(0, 171, 179, 1),
      //           /*image: DecorationImage(
      //                   image: AssetImage("img/welcome.webp"),
      //                   fit: BoxFit.cover)*/
      //         ),
      //         child: Center(
      //           child: Text(
      //             "Sign Out",
      //             style: TextStyle(
      //                 fontSize: 23,
      //                 fontWeight: FontWeight.bold,
      //                 color: Colors.white),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}


/*class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
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
                    email,
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
*/