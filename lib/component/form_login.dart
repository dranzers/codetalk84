import 'package:codetalk84/atom/form_input.dart';
import 'package:codetalk84/atom/submit_button.dart';
import 'package:flutter/material.dart';

class FormLoginComponent extends StatefulWidget {
  @override
  _FormLoginComponentState createState() => _FormLoginComponentState();
}

class _FormLoginComponentState extends State<FormLoginComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child: Column(children: [
        FormInput(icon: Icon(Icons.email), hintText: 'Your Email'),
        SizedBox(height: 10),
        FormInput(icon: Icon(Icons.lock), hintText: 'Your Password'),
        SizedBox(height: 18),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SubmitButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  text: 'Login'),
            ],
          ),
        )
      ]),
    );
  }
}
