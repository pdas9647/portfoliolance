import 'package:flutter/material.dart';

import '../widgets/body.dart';
import '../widgets/button_row.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 9.0, bottom: 9.0),
              child: CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.white,
                foregroundImage:
                    NetworkImage('https://picsum.photos/id/237/200/300'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Padmanabha Das',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        /*actions: [
          ContactButton(
            buttonText: 'Contact Me',
            iconData: Icons.send_rounded,
            onPressed: () async {
              // launchMailTo();
              final Email email = Email(
                body: 'Email body',
                subject: 'Email subject',
                recipients: ['padmanabhadas9647@gmail.com'],
                cc: [''],
                bcc: [''],
                attachmentPaths: [''],
                isHTML: false,
              );

              await FlutterEmailSender.send(email);
            },
          ),
        ],*/
      ),
      body: Stack(
        children: [
          const Body(),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: Container(
                    height: 50.0,
                    color: const Color(0xFFECECEC),
                    child: const ButtonRow(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
