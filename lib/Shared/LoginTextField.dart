import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  String hinText;
  bool? obscureText;
  String label;
  Widget icon;
  Widget? suffix;
  LoginTextField(
      {super.key,
      required this.hinText,
      required this.obscureText,
      required this.label,
      required this.icon,
      this.suffix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hinText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        label: Text(label),
        prefixIcon: icon,
        suffixIcon: suffix
      ),
      obscureText: obscureText!,
    );
  }
}
