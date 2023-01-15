import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carousel extends StatelessWidget {
  const carousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 240.0),
      items: ['images/lake.jpg','images/lake2.jpg','images/lake3.jpg'].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
              i,
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            );
          },
        );
      }).toList(),
    );
  }
}