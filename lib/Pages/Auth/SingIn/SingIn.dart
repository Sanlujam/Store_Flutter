import 'package:flutter/material.dart';
import 'SingInView.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String title = "SignIn";

  @override
  Widget build(BuildContext context) {
    return View(title: title);
  }
}
