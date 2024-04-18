import 'package:flutter/material.dart';

class RegisterGuestScreen extends StatefulWidget {
  const RegisterGuestScreen({super.key});

  @override
  _RegisterGuestScreenState createState() => _RegisterGuestScreenState();
}

class _RegisterGuestScreenState extends State<RegisterGuestScreen> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  UserProfile userProfile = new UserProfile();
  String firstName = '';
  String lastName = '';

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the screen width and set a maximum width for your SizedBox
    double screenWidth = MediaQuery.of(context).size.width;
    double maxWidth = screenWidth > 500 ? 500 : screenWidth;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Register as Guest'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightBlueAccent,
              Colors.indigo,
              Colors.redAccent,
            ], // Gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox
              (
              width: maxWidth,
              child: Column
                (
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>
                [
                  const Text
                    (
                    'Sign Up as Guest',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    // todo: global width here
                      width: 500,
                      child:
                      TextField(
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Enter Email',
                          hintStyle: const TextStyle(color: Colors.white), // Set the hint text color to white
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      hintStyle: const TextStyle(color: Colors.white), // Set the hint text color to white
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Enter First Name',
                      hintStyle: const TextStyle(color: Colors.white), // Set the hint text color to white
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Enter Last Name',
                      hintStyle: const TextStyle(color: Colors.white), // Set the hint text color to white
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    child: const Text('Next'),
                  ),
                  const SizedBox(height: 20),
                  const CircularProgressIndicator(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

