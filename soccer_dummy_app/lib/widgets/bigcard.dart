import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  const BigCard({
    Key? key,
    required this.placeholder,
    required this.image,
  }) : super(key: key);

  final String placeholder;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SnackBar snackBar = SnackBar(content: Text(image));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Card(
        child: FadeInImage.assetNetwork(
          placeholder: placeholder,
          image: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}