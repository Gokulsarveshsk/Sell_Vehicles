import 'package:cars/utils/utils.dart';
import 'package:flutter/material.dart';

class SpecificsCard extends StatelessWidget {
  final double price;
  final String name;
  final String constraints;

  SpecificsCard({
    required this.price,
    required this.name,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: price == null ? 100 : 100,
      width: 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: price == null
          ? Column(
              children: [
                Text(
                  name,
                  style: BasicHeading,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  constraints,
                  style: SubHeading,
                ),
              ],
            )
          : Column(
              children: [
                Text(
                  name,
                  textAlign: TextAlign.left,
                  style: BasicHeading,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  price.toString(),
                  style: SubHeading,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(constraints)
              ],
            ),
    );
  }
}
