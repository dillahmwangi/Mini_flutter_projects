import 'package:flutter/material.dart';
import 'package:mini_projects/src/components/my_textfield.dart';
import '';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              
              //Welcome back message
              Text(
                "Welcome back you've been missed ",

                style:TextStyle(
                   color: Theme.of(context).colorScheme.primary,
                   fontSize: 16,
                ),

              ),
              const SizedBox(height: 25,),

              //email textfield
              const MyTextField(
                hintText: "Email",
              ),

              const SizedBox(height: 10),

              //password textfield
                const MyTextField(
                hintText: "Password",
              ),


              //register now
            ],
          ),
        ));
  }
}
