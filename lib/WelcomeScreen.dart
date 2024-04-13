import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mysmartfoodchoice_flutter/AuthenticationScreen/LoginScreen.dart';
import 'package:mysmartfoodchoice_flutter/AuthenticationScreen/RegisterGuestScreen.dart';
import 'package:mysmartfoodchoice_flutter/AuthenticationScreen/RegisterBusinessScreen.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'MySmartFoodChoice',
      theme: ThemeData(
        // todo: color scheme is global
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
        textTheme: const TextTheme
          (
          bodyLarge: TextStyle(fontSize: 24), // Apply the text size globally
          // Define other text styles as needed
        ),
      ),
      home: const MyHomePage(title: 'MySmartFoodChoice'),

    );
  }
}

class MyHomePage extends StatefulWidget
{
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  static const String title = "Welcome to the Smart Food Choice";

  // go to the another page function
  void _navigateToLoginScreen()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder:
          (context) => LoginScreen()),
    );
  }

  void _navigateToRegisterGuestScreen()
  {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>
            RegisterGuestScreen())
    );
  }

  void _navigateToRegisterBusinessScreen()
  {
    Navigator.push(
      context,
      MaterialPageRoute
        (builder:
          (context) =>
        RegisterGuestScreen()
      )
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightBlueAccent,
              Colors.indigo,
              Colors.redAccent], // Gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
              const Text(
                title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
              ),
              const SizedBox(height: 150),
              Container(
                margin: const EdgeInsets.only(bottom: 30), // Adjust the bottom margin as needed
                child: ElevatedButton(
                  onPressed: _navigateToLoginScreen,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    minimumSize: const Size(300, 50),
                  ),
                  child: const Text("Sign In", style: TextStyle(fontSize: 20)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30), // Adjust the bottom margin as needed
                child: ElevatedButton(
                  onPressed: _navigateToRegisterGuestScreen,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    minimumSize: const Size(300, 50),
                  ),
                  child: const Text("Sign Up as Guest", style: TextStyle(fontSize: 20)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: ElevatedButton(
                  onPressed: _navigateToRegisterBusinessScreen,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    minimumSize: const Size(300, 50),
                  ),
                  child: const Text("Sign Up as Business Vendor", style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
 */
