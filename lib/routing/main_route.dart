
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_persistent_modal_bug/routing/routes/dialog_route.dart';
import 'package:go_router_persistent_modal_bug/routing/routes/home_route.dart';

part 'main_route.g.dart';

@TypedShellRoute<MainRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(path: "/"),
    TypedGoRoute<DialogRoute>(path: "/dialog"),
  ]
)
class MainRoute extends ShellRouteData {
  const MainRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return navigator;
  }
}
