import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController txtController;
  final String hint;

  const CustomTextField({
    super.key,
    required this.txtController,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hint,
      ),
    );
  }
}
