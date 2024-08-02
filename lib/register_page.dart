import 'package:flutter/material.dart';
import 'package:food_delivery_app/my_button.dart';
import 'my_textfield.dart';
import 'auth_service.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget{
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  void register() async {
    final AuthService _authService = AuthService();

// Check if passwords match -> create user
    if (passwordController.text == confirmPasswordController.text) {
      // Try creating user
      try {
        await _authService.signUpWithEmailAndPassword(
          emailController.text,
          passwordController.text,
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ), // AlertDialog
        );
      }
    } else {
      // If passwords don't match -> show error
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Passwords don't match!"),
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
                "Fusion Flavour",
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

              //Confirm Password
              MyTextField(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                obscureText: true,
              ),
              const SizedBox(height: 10),

              //signUp Button
              MyButton(
                text: "Sign Up",
                onTap: () {
                  if (passwordController.text == confirmPasswordController.text) {
                    register();
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => const AlertDialog(
                        title: Text("Passwords don't match!"),
                      ), // AlertDialog
                    );
                  }
                },
              ),
              const SizedBox(height: 25),

              Row(
                children: [
                  Text(
                    "already have an Account?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Login Now",
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