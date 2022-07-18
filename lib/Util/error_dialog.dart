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

Future<bool?> showLogOutDialog(BuildContext context) {
  return showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Logout'),
      content: const Text('Are You Sure You Want To Logout'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: const Text('Yes'),
        ),
      ],
    ),
  );
}
