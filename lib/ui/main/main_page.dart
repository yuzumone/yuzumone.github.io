import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/ui/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      child: Container(
        margin: EdgeInsets.only(top: 100, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Center(
                child: Image.network(
                    'https://avatars1.githubusercontent.com/u/5382232',
                    width: 160),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Container(
              child: Center(
                child: Text(
                  'yuzumone',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Tooltip(
                      message: 'GitHub',
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.github),
                        onPressed: () {
                          launchUrl(Uri.parse('https://github.com/yuzumone'));
                        },
                      ),
                    ),
                    Tooltip(
                      message: 'Medium',
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.medium),
                        onPressed: () {
                          launchUrl(Uri.parse('https://medium.com/@yuzumone'));
                        },
                      ),
                    ),
                    Tooltip(
                      message: 'LinkedIn',
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.linkedin),
                        onPressed: () {
                          launchUrl(Uri.parse(
                              'https://www.linkedin.com/in/kazuaki-togawa/'));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
