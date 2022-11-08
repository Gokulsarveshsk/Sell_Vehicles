import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'img/ford.png',
            image_caption: 'Ford',
          ),
          Category(
            image_location: 'img/w.png',
            image_caption: 'VolksWagen',
          ),
          Category(
            image_location: 'img/toyoto.png',
            image_caption: 'Toyota',
          ),
          Category(
            image_location: 'img/skoda.png',
            image_caption: 'skoda',
          ),
          Category(
            image_location: 'img/kia.png',
            image_caption: 'KIA',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({required this.image_location, required this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 40.0,
                height: 40.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: new TextStyle(fontSize: 12.0),
                ),
              )),
        ),
      ),
    );
  }
}
