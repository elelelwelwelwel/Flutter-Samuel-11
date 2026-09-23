import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController txtController;
  final String myHint;

  const CustomTextField({
    super.key,
    required this.txtController,
    required this.myHint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: myHint,
      ),
    );
  }
}
