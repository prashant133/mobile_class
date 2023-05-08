import 'package:flutter/material.dart';

void showMessage(BuildContext context, String message,
    {Color color = Colors.red}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 1),
      backgroundColor: color,
      behavior: SnackBarBehavior.floating,
    ),
  );
}
