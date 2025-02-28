import 'package:flutter/material.dart';
import 'package:mini_projects/src/components/my_button.dart';
import 'package:mini_projects/src/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  //email and password text controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  //tap to go to login page
  final void Function()? onTap;

  RegisterPage({super.key, 
  required this.onTap});

  //register method
  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.message,
                size: 60,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 50),

              //create an account message
              Text(
                "Lets create an account for you",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              //email textfield
              MyTextField(
                hintText: "Email",
                obscureText: false,
                controller: _emailController,
              ),

              const SizedBox(height: 25),

              //password textfield
              MyTextField(
                hintText: "Password",
                obscureText: true,
                controller: _pwController,
              ),

              const SizedBox(height: 25),

              //confirm password textfield
              MyTextField(
                hintText: "Confirm Password",
                obscureText: true,
                controller: _confirmPwController,
              ),

              const SizedBox(height: 25),

              //login button
              MyButton(
                text: "Register",
                onTap: register,
              ),

              const SizedBox(height: 25),

              //register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account?",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      "Login now",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.outline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
