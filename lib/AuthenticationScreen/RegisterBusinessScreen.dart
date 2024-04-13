
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterBusinessScreen extends StatefulWidget
{
  @override
  _RegisterBusinessScreen createState() => _RegisterBusinessScreen();
}

class _RegisterBusinessScreen extends State<RegisterBusinessScreen>
{
  late String emailRememberMe, passwordRememberMe;

  @override
  void initState()
  {
    super.initState();
    // Initialize Paper or any other persistent storage here
    // For example, to read email and password from Paper:
    // emailRememberMe = Paper.book().read(Prevalent.UserEmailKey);
    // passwordRememberMe = Paper.book().read(Prevalent.UserPasswordKey);
  }

  @override
  Widget build(BuildContext context)
  {
    // TODO: implement build
    return Scaffold
      (
      // todo: do this business screen
    );
  }
}