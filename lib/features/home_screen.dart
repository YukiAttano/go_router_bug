import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          onPressed: () {
            GoRouter.of(context).go("/dialog");
          },
          child: Text("Go to 'Dialog' page"),
        ),
      ),
    );
  }
}
