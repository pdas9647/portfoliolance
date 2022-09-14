import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfoliolance/globals/globals.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(
                        opacity: 0.6,
                        child: Image.asset(
                          'assets/images/profile_picture.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 75.0),
                                child: AutoSizeText(
                                  'I\'m Padmanabha. \nAndroid and Flutter Developer',
                                  style: TextStyle(
                                    fontSize: 44.5,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ),
                            ),
                            /*Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 70.0,
                                  vertical: 60.0,
                                ),
                                child: ContactButton(
                                  buttonText: 'Drop me a line',
                                  iconData: Icons.mail_outline_rounded,
                                  onPressed: () {
                                    launchMailTo();
                                  },
                                ),
                              ),
                            ),*/
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100.0),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  'My Projects',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 23.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // Expanded(child:
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: projectList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListView(
                      shrinkWrap: true,
                      children: [
                        Card(
                          elevation: 3.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: Image.asset(
                                    projectList[index]['project_icon']),
                                title: Text(
                                  projectList[index]['title'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.0,
                                  ),
                                ),
                                subtitle: Text(projectList[index]['subtitle']),
                              ),
                              if (!isStringInvalid(
                                  text: projectList[index]['play_store']))
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: InkWell(
                                    onTap: () async {
                                      if (!await launchUrl(Uri.parse(
                                          projectList[index]['play_store']))) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                              content: Text(
                                                  'Something went wrong, please try again after sometime')),
                                        );
                                      }
                                    },
                                    child: Text(
                                        'Play Store: ${projectList[index]['play_store']}'),
                                  ),
                                ),
                              Container(
                                height: projectList[index]['image'].isNotEmpty
                                    ? 120.0
                                    : 0.0,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: projectList[index]['image'].length,
                                  itemBuilder: (BuildContext context,
                                      int projectImageIndex) {
                                    return Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              projectList[index]['image']
                                                  [projectImageIndex],
                                              fit: BoxFit.contain,
                                              width: 100.0,
                                            ),
                                          );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              // ),
            ],
          ),
        ),
        const SizedBox(width: 100.0),
      ],
    );
  }
}
