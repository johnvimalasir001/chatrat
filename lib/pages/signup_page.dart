import 'package:chatrat/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _signUpKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(34, 48, 60, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 50,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 340,
                width: MediaQuery.of(context).size.width,
                child: Form(
                  key: _signUpKey,
                  child: Column(
                    children: [
                      commonTextFormField(hintText: "Email"),
                      commonTextFormField(hintText: "Password"),
                      commonTextFormField(hintText: "Confirm Password"),
                      signUpButton(context, 'Sign Up'),
                    ],
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "Or Continue with",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              socialMediaIntegrationButtons(),
              const SizedBox(height: 10),
              switchAnotherAuthPage(
                  context, "Already have an Account?", 'Login')
            ],
          ),
        ),
      ),
    );
  }
}
