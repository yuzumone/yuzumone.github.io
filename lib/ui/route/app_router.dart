import 'package:auto_route/auto_route.dart';
import 'package:portfolio/ui/route/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AppRoute.page,
          path: '/',
          initial: true,
          children: [
            AutoRoute(page: MainRoute.page, initial: true, path: 'main'),
            AutoRoute(page: ResumeRoute.page, path: 'resume'),
          ],
        ),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}
