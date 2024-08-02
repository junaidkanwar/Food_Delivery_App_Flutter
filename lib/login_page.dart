import 'package:flutter/material.dart';
import 'package:food_delivery_app/my_button.dart';
import 'my_textfield.dart';
import 'home_page.dart';
import 'auth_service.dart';

class LoginPage extends StatefulWidget{
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) async {
    final AuthService _authService = AuthService();

    // Try signing in
    try {
      await _authService.signInWithEmailAndPassword(
        emailController.text,
        passwordController.text,
      );
      // Navigate to home page after successful login
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ), // AlertDialog
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
          child: Column(
            children: [
              //logo
              Image.asset(
                'lib/images/logo/logo.png', // Adjust the path to your logo image
                width: 100,
                height: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25),
              //message
              Text(
                "Flavour Fusion",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(height: 25),

              //email
              MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false,
              ),
              const SizedBox(height: 10),

              //password
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(height: 10),
              //signIn Button
              MyButton(
                text: "Sign In",
                onTap: () {
                  login(context);
                },
              ),
              const SizedBox(height: 25),

              Row(
                children: [
                  Text(
                    "Not a Member?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Register now",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}