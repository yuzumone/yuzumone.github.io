// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:portfolio/ui/app/app_page.dart' as _i1;
import 'package:portfolio/ui/main/main_page.dart' as _i2;
import 'package:portfolio/ui/resume/resume_page.dart' as _i3;

/// generated route for
/// [_i1.AppPage]
class AppRoute extends _i4.PageRouteInfo<void> {
  const AppRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AppRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i1.AppPage();
    },
  );
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i4.PageRouteInfo<void> {
  const MainRoute({List<_i4.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i2.MainPage();
    },
  );
}

/// generated route for
/// [_i3.ResumePage]
class ResumeRoute extends _i4.PageRouteInfo<void> {
  const ResumeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ResumeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResumeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i3.ResumePage();
    },
  );
}
