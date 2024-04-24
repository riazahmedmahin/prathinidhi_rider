import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 200,),
            Text("Login",style:Theme.of(context).textTheme.titleLarge,),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                hintText: "Phone number"
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: "Password"
              ),
            ),
          ],
        ),
      ),
    );
  }
}
