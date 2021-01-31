import 'package:flutter/material.dart';
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
        brightness: Brightness.dark,
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('yuzumone'),
        actions: [
          FlatButton(
            textColor: Colors.white,
            onPressed: () => setState(() => _index = 0),
            child: Text('Main'),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
          FlatButton(
            textColor: Colors.white,
            onPressed: () => setState(() => _index = 1),
            child: Text('Resume'),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
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
