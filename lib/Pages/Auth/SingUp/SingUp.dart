import 'package:flutter/material.dart';
import 'SingUpView.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String _title = "SignUp";

  String? _validateField(value) {
    if (value == '') {
      return AppLocalizations.of(context)!.nameApp;
    }
  }

  void _onSubmit() {
    if (_formKey.currentState!.validate()) {}
  }

  void _validate(String value) {
    _formKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return View(
      formKey: _formKey,
      title: _title,
      onSubmit: _onSubmit,
      validateField: _validateField,
      validate: _validate,
    );
  }
}
