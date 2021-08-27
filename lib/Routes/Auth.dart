import 'package:flutter/material.dart';
import 'package:store/Pages/Auth/SingIn/SingIn.dart';
import 'package:store/Pages/Auth/SingUp/SingUp.dart';

var authRoutes = <String, WidgetBuilder>
{
  '/SignIn': (context) => SignIn(),
  '/SignUp': (context) => SignUp(),
};