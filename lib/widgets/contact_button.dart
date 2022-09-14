import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final IconData iconData;
  final Function onPressed;

  const ContactButton({
    Key? key,
    required this.buttonText,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(color: Colors.black),
          backgroundColor: Colors.amberAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        onPressed: () {},
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(iconData, color: Colors.black54),
        ),
        label: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
