import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_persistent_modal_bug/features/home_screen.dart';

class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}
