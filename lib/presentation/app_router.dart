import 'package:auto_route/auto_route.dart';
import 'package:greg_sausage_roll/presentation/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(page: SausageFormRoute.page),
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // AuthGuard(),
      ];
}
