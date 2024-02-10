import 'package:flutter/material.dart';
import 'package:login_system_app/views/login_page.dart';
import 'package:login_system_app/views/register_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xffb81736),
          Color(0xff2A1639),
        ])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 118.0),
              child: Image(image: AssetImage('assets/img/logo.png')),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Welcome Back',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.transparent, // Set background color to transparent
                  padding:
                      EdgeInsets.symmetric(horizontal: 130.0, vertical: 20),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.white,
                        width: 2), // Border color and width
                    borderRadius: BorderRadius.circular(70.0), // Border radius
                  ),
                ),
                child: Text(
                  'SIGN IN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.white, // Set background color to transparent
                  padding:
                      EdgeInsets.symmetric(horizontal: 130.0, vertical: 20),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.white,
                        width: 2), // Border color and width
                    borderRadius: BorderRadius.circular(70.0), // Border radius
                  ),
                ),
                child: Text(
                  'SIGN UP',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Spacer(),
            Text(
              'Login with Social Media',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.email, color: Colors.white, // Customize the color
                    size: 38.0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.telegram, color: Colors.white, // Customize the color
                    size: 38.0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.facebook, color: Colors.white, // Customize the color
                    size: 38.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
