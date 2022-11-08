// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import '../utils/utils.dart';

// class PrdouctDeatils extends StatefulWidget {
//   const PrdouctDeatils({super.key});

//   @override
//   State<PrdouctDeatils> createState() => _PrdouctDeatilsState();
// }

// class _PrdouctDeatilsState extends State<PrdouctDeatils> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(
//         elevation: 0.0,
//         backgroundColor: Color.fromRGBO(0, 171, 179, 1),
//         title: Text("Cars", style: MainHeading),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.search,
//               color: Colors.white,
//             ),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(
//               Icons.shopping_cart,
//               color: Colors.white,
//             ),
//             onPressed: () {},
//           ),
//         ],
//       ) ,
//       body: ListView(
//         children: [
//           Container(
//             height: 300,
//             color: Colors.black,
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:cars/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgets/specific_card.dart';

class CarDetail extends StatelessWidget {
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;

  CarDetail(
      {required this.title,
      required this.price,
      required this.color,
      required this.gearbox,
      required this.fuel,
      required this.brand,
      required this.path});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
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
      body: Column(
        children: [
          Text(title, style: MainHeading),
          Text(
            brand,
            style: BasicHeading,
          ),
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(path),
              ),
            ),
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage(path), fit: BoxFit.cover)),
          ),
          //Hero(tag: title, child: Image.asset(path),),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                name: '12 Month',
                price: price * 12,
                constraints: '12 Month',
              ),
              SpecificsCard(
                name: '6 Month',
                price: price * 6,
                constraints: '6 Month',
              ),
              SpecificsCard(
                name: '1 Month',
                price: price * 1,
                constraints: '1 Month',
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'SPECIFICATIONS',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                name: 'Color',
                constraints: color,
                price: 2000,
              ),
              SpecificsCard(
                name: 'Gearbox',
                constraints: gearbox,
                price: 1000000,
              ),
              SpecificsCard(
                name: 'Fuel',
                constraints: fuel,
                price: 234958,
              )
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Book Now',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}


//Image.asset(path)*/