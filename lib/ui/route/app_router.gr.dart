// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    AppRoute.name: (routeData) {
      return MaterialPageX<dynamic>(routeData: routeData, child: AppPage());
    },
    MainRoute.name: (routeData) {
      return MaterialPageX<dynamic>(routeData: routeData, child: MainPage());
    },
    ResumeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(routeData: routeData, child: ResumePage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(AppRoute.name, path: '/', children: [
          RouteConfig('#redirect',
              path: '',
              parent: AppRoute.name,
              redirectTo: 'main',
              fullMatch: true),
          RouteConfig(MainRoute.name, path: 'main', parent: AppRoute.name),
          RouteConfig(ResumeRoute.name, path: 'resume', parent: AppRoute.name)
        ]),
        RouteConfig('*#redirect', path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [AppPage]
class AppRoute extends PageRouteInfo<void> {
  const AppRoute({List<PageRouteInfo>? children})
      : super(AppRoute.name, path: '/', initialChildren: children);

  static const String name = 'AppRoute';
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute() : super(MainRoute.name, path: 'main');

  static const String name = 'MainRoute';
}

/// generated route for
/// [ResumePage]
class ResumeRoute extends PageRouteInfo<void> {
  const ResumeRoute() : super(ResumeRoute.name, path: 'resume');

  static const String name = 'ResumeRoute';
}
