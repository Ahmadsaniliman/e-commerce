import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({
    Key? key,
    this.keyBoardType,
    required this.label,
    required this.obscureText,
    required this.hintText,
    required this.controller,
    required this.iconData,
  }) : super(key: key);

  final String label, hintText;
  final Icon iconData;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType? keyBoardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyBoardType,
      controller: controller,
      decoration: InputDecoration(
        // labelText: labelText,
        label: Text(label),
        suffixIcon: iconData,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 15,
        ),
        hintText: hintText,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
