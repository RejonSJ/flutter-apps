import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.placeholder,
    required this.image,
  }) : super(key: key);

  final String placeholder;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: FadeInImage.assetNetwork(
        placeholder: placeholder,
        image: image,
        fit: BoxFit.cover,
      ),
    );
  }
}