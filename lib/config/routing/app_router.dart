import 'package:auto_route/auto_route.dart';

import '../../features/home/presentation/home.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        // AutoRoute(initial: true, path: '/splash', page: SplashRouteRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
      ];
}
