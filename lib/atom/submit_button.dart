import 'package:flutter/material.dart';

class SubmitButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const SubmitButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      onPressed: widget.onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_right_alt_rounded),
          SizedBox(width: 5),
          Text(widget.text,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300)),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}
