import 'package:flutter/material.dart';

class CustomTextFieldNumber extends StatelessWidget {
  final TextEditingController txtController;
  final String myHint;

  const CustomTextFieldNumber({
    super.key,
    required this.txtController,
    required this.myHint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: myHint,
      ),
    );
  }
}
