import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget child;

  ResponsiveWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var padding = 160.0;
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          padding = 32.0;
        }
        return Container(
          margin: EdgeInsets.only(left: padding, right: padding),
          child: child,
        );
      },
    );
  }
}
