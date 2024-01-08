import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/route/app_router.gr.dart';

@RoutePage()
class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('yuzumone'),
        actions: [
          TextButton(
            onPressed: () {
              context.navigateTo(const MainRoute());
            },
            child: Text('Main'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
          ),
          TextButton(
            onPressed: () {
              context.navigateTo(const ResumeRoute());
            },
            child: Text('Resume'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
      body: AutoRouter(),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 16.0, bottom: 8.0, top: 8.0),
        child: Text('© 2022 yuzumone'),
      ),
    );
  }
}
