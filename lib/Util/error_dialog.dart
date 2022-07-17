import 'package:flutter/material.dart';

Future<void> showErrorDialog({
  required BuildContext context,
  required String contentText,
}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Authentication Error'),
      content: Text(contentText),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Ok'),
        ),
      ],
    ),
  );
}
