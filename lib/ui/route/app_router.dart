import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/app/app_page.dart';
import 'package:portfolio/ui/main/main_page.dart';
import 'package:portfolio/ui/resume/resume_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: AppPage,
      initial: true,
      children: [
        AutoRoute(path: 'main', page: MainPage, initial: true),
        AutoRoute(path: 'resume', page: ResumePage),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class AppRouter extends _$AppRouter {}
