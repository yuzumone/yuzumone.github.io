import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/ui/route/app_router.gr.dart';

@RoutePage()
class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
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
          margin: const EdgeInsets.only(
              left: 16.0, right: 16.0, bottom: 8.0, top: 8.0),
          child: Row(
            children: [
              Text('© 2024 yuzumone'),
              Expanded(child: SizedBox()),
              Tooltip(
                message: 'License',
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.circleInfo),
                  iconSize: 16,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () => showLicensePage(context: context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
