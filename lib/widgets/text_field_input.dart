import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType textInputType;
  final bool isPassword;

  const TextFieldInput(
      {Key? key,
      required this.hintText,
      required this.textInputType,
      this.isPassword=false,
      required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final border =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));

    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: hintText,
          border: border,
          enabledBorder: border,
          focusedBorder: border,
          filled: true,
          contentPadding: const EdgeInsets.all(8)),
      keyboardType: textInputType,
      obscureText: isPassword,
    );
  }
}
