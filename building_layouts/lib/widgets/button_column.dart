import 'package:flutter/material.dart';

class buttonColumn extends StatelessWidget {
  const buttonColumn({
    Key? key,
    required this.color,
    required this.icon,
    required this.label,
    required this.snackText,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String label;
  final String snackText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            final snackBar = SnackBar(
              content: Text(snackText),
              action: SnackBarAction(
                label: 'Aceptar',
                onPressed: () {},
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Icon(icon, color: color),
            Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
          ],
          ),
        ),
      ],
    );
  }
}
