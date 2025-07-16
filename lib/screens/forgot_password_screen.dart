import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Forgot Password",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 24),
            Text(
              "Enter your email address to receive a link to reset your password.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 67, 67, 67),
              ),
            ),
            SizedBox(height: 64),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: Row(
                children: [
                  Expanded(
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: const Color.fromARGB(255, 255, 119, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "Submit",
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
          ],
        ),
      ),
    );
  }
}
