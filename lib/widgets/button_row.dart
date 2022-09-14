import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../globals/globals.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// facebook
        TextButton.icon(
          onPressed: () {
            launchURL(url: 'https://www.facebook.com/padmanabha.das.94');
          },
          icon: const Icon(Icons.facebook_rounded, color: Colors.black),
          label: const Text(''),
        ),

        /// instagram
        TextButton.icon(
          onPressed: () {
            launchURL(url: 'https://www.instagram.com/pdas_1906/');
          },
          icon: const Icon(FontAwesomeIcons.instagram, color: Colors.black),
          label: const Text(''),
        ),

        /// github
        TextButton.icon(
          onPressed: () {
            launchURL(url: 'https://github.com/pdas9647');
          },
          icon: const Icon(FontAwesomeIcons.github, color: Colors.black),
          label: const Text(''),
        ),
      ],
    );
  }
}
