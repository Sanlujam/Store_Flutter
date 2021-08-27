import 'package:flutter/material.dart';

class View extends StatelessWidget {
  final String title;
  final void Function() onSubmit;
  final GlobalKey formKey;
  final String? Function(dynamic) validateField;
  final void Function(String) validate;

  View(
      {required this.formKey,
      required this.title,
      required this.onSubmit,
      required this.validateField,
      required this.validate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    TextFormField(
                      validator: validateField,
                      decoration: InputDecoration(labelText: 'Nickname'),
                      onChanged: validate,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                    ),
                  ],
                ),
                ElevatedButton(child: Text('Registrarse'), onPressed: onSubmit)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
