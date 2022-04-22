import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

import 'package:portfolio/main.dart';
import 'package:portfolio/ui/route/app_router.dart';

void main() {
  testWidgets('App widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
  });

  testWidgets('App widget test', (tester) async {
    mockNetworkImagesFor(() async {
      final appRouter = AppRouter();
      await tester.pumpWidget(
        MaterialApp.router(
          routeInformationParser: appRouter.defaultRouteParser(),
          routerDelegate: appRouter.delegate(),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Main'), findsOneWidget);
    });
  });
}
