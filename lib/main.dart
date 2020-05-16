import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:portfolio/pages/main_page.dart';
import 'package:portfolio/pages/resume_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultPage(),
    );
  }
}

class DefaultPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DefaultPageState();
}

class DefaultPageState extends State<DefaultPage> {
  int _index = 0;
  final List<Widget> _pages = [
    MainPage(),
    ResumePage(),
  ];
  final List<Widget> _mobilePages = [
    MainPage(sideMergin: 32.0),
    ResumePage(sideMergin: 32.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('yuzumone\' portfolio'),
        actions: [
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
              launch('https://www.linkedin.com/in/kazuaki-togawa/');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Main'),
              onTap: () {
                Navigator.of(context).pop();
                setState(() => _index = 0);
              },
            ),
            ListTile(
              title: Text('Resume'),
              onTap: () {
                Navigator.of(context).pop();
                setState(() => _index = 1);
              },
            ),
          ],
        ),
      ),
      body: ResponsiveBuilder(builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return _mobilePages[_index];
        }
        return _pages[_index];
      }),
    );
  }
}
