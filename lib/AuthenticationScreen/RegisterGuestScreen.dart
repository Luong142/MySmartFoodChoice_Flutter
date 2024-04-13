
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterGuestScreen extends StatefulWidget
{
  @override
  _RegisterGuestScreen createState() => _RegisterGuestScreen();
}

class _RegisterGuestScreen extends State<RegisterGuestScreen>
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