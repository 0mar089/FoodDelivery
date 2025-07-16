import 'package:flutter/material.dart';
import 'package:food_delivery/screens/forgot_password_screen.dart';
import 'package:food_delivery/screens/home_screen.dart';
import 'package:food_delivery/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 130),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Login",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 8, 24, 32),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Welcome back! Please login to your account.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 67, 67, 67),
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 8, 24, 16),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter your email address',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter your password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              print("Forgot Password tapped");
              // Navigate to Forgot Password Screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ForgotPasswordScreen(),
                ),
              );
            },
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Expanded(
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    backgroundColor: const Color.fromARGB(255, 255, 119, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 24),
              Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  print("Sign Up tapped");
                  // Navigate to Sign Up Screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ),
                  );
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 119, 0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
