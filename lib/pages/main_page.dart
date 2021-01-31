import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatelessWidget {
  final double sideMergin;
  const MainPage({Key key, this.sideMergin = 160.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle.merge(
        style: GoogleFonts.notoSans(),
        child: Container(
          margin: EdgeInsets.only(
              top: 100, right: sideMergin, left: sideMergin, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Center(
                  child: Image.network(
                      'https://avatars1.githubusercontent.com/u/5382232', width: 160),
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
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.github),
                        onPressed: () {
                          launch('https://github.com/yuzumone');
                        },
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.medium),
                        onPressed: () {
                          launch('https://medium.com/@yuzumone');
                        },
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.linkedin),
                        onPressed: () {
                          launch(
                              'https://www.linkedin.com/in/kazuaki-togawa/');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
