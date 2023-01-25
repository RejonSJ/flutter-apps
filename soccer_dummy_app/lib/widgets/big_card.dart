import 'package:flutter/material.dart';

import 'custom_card.dart';

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
      child: CustomCard(placeholder: placeholder, image: image),
    );
  }
}