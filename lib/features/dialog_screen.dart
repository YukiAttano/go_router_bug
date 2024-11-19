import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          onPressed: () async => showExampleDialog(context),
          child: Text("Open Dialog"),
        ),
      ),
    );
  }
}

Future<void> showExampleDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return const ExampleDialog();
    },
  );
}

class ExampleDialog extends StatelessWidget {
  const ExampleDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Dialog"),
      content: Text("This Dialog does not close automatically on navigation neither via button press nor deepLink (if generated routes are used)"),
      actions: [
        TextButton(
          onPressed: Navigator.of(context).pop,
          child: Text("Close"),
        ),
        TextButton(
          onPressed: () {
            GoRouter.of(context).go("/");
          },
          child: Text("Go to Home"),
        )
      ],
    );
  }
}
