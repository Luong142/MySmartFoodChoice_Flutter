import 'package:flutter/material.dart';
import 'package:mysmartfoodchoice_flutter/AuthenticationScreen/LoginScreen.dart';
import 'package:mysmartfoodchoice_flutter/AuthenticationScreen/RegisterBusinessScreen.dart';
import 'package:mysmartfoodchoice_flutter/AuthenticationScreen/RegisterGuestScreen.dart';

class WelcomeScreen extends StatefulWidget
{
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
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
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink, Colors.purple], // Using predefined color constants
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/women.png', // Replace with your image path
                width: 412,
                height: 286,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/foodimage.png', // Replace with your image path
                width: MediaQuery.of(context).size.width,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Welcome to Smart Food Choice',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Login Screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text('Sign In'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Color(0xFF1E90FF),
                      textStyle: TextStyle(fontSize: 25),
                    ),
                  ),
                  SizedBox(height: 4),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Register Guest Screen
                      /*
                      Navigator.push(
                        context,
                        // MaterialPageRoute(builder: (context) => RegisterGuestScreen()),
                      );
                       */
                    },
                    child: Text('Sign Up as Guest'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Color(0xFF1E90FF),
                      textStyle: TextStyle(fontSize: 25),
                    ),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Register Business Screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterBusinessScreen()),
                      );
                    },
                    child: Text('Sign Up as Business Vendor'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Color(0xFF1E90FF),
                      textStyle: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// fixme: this would be the function not class

