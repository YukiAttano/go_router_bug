import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_persistent_modal_bug/features/dialog_screen.dart';
import 'package:go_router_persistent_modal_bug/features/home_screen.dart';
import 'package:go_router_persistent_modal_bug/routing/main_route.dart';

List<GoRoute> _routes = [
  GoRoute(
    path: "/",
    builder: (context, state) {
      return HomeScreen(
     //   key: state.pageKey,
      );
    },
  ),
  GoRoute(
    path: "/dialog",
    builder: (context, state) {
      return DialogScreen(
    //    key: state.pageKey,
      );
    },
  ),
];

final router = Provider(
  (ref) {

    // TODO(4.): change the routes from $appRoutes to _routes
    // TODO(5.): repeat 1-3

    // Using the generated $appRoutes, opening a Dialog or BottomSheet (not implemented in this example) and navigating to a different route
    // either via code or via deepLink, the Dialog persists over the routes.
    // using the handcrafted routes, Dialogs will correctly be dismissed.
    return GoRouter(
      // using $appRoutes will show the bug
      //routes: $appRoutes
      // those are the same routes, but without the bug
      routes: _routes,
    );
  },
);
