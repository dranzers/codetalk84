import 'package:flutter/material.dart';

class FormInput extends StatefulWidget {
  final String? hintText;
  final bool obscureText;
  final Icon icon;
  TextEditingController? controller;

  FormInput(
      {Key? key,
      this.hintText,
      this.obscureText = false,
      this.controller,
      required this.icon})
      : super(key: key);
  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      autofocus: false,
      style: TextStyle(fontWeight: FontWeight.w300),
      decoration: InputDecoration(
        prefixIcon: widget.icon,
        hintText: widget.hintText,
        hintStyle: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14,
            color: Color(0xffC4C4C4)),
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(width: 0.5)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(width: 0.5)),
      ),
    );
  }
}
