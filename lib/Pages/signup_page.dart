import 'package:flutter/material.dart';
import 'package:gdsc_login/widgets/custom_password.dart';

import '../widgets/custom_text_from_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    style: TextStyle(fontSize: 30, fontFamily: 'Pacifico'),
                    'Sign Up',
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      thickness: 5,
                      endIndent: 40,
                      indent: 40,
                      color: Color.fromARGB(255, 84, 83, 83),
                    ),
                  ),
                  const CustomTextFromField(
                    labelText: 'Name',
                    prefixIcon: Icon(
                      color: Colors.black,
                      Icons.person,
                    ),
                  ),
                  const CustomTextFromField(
                    labelText: 'Email',
                    prefixIcon: Icon(
                      color: Colors.black,
                      Icons.email,
                    ),
                  ),
                  const CustomTextFromField(
                      labelText: 'Phone',
                      prefixIcon: Icon(
                        color: Colors.black,
                        Icons.phone,
                      )),
                  const CustomPassword(
                    labelText: 'Create Password',
                    prefixIcon: Icon(
                      color: Colors.black,
                      Icons.lock_open,
                    ),
                  ),
                  const CustomPassword(
                    labelText: 'Confirm Password',
                    prefixIcon: Icon(
                      color: Colors.black,
                      Icons.lock,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: double.infinity,
                    height: 50,
                    child: MaterialButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            //
                          } else {
                            //
                          }
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account.',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
