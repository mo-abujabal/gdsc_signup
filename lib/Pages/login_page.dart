import 'package:flutter/material.dart';
import 'package:gdsc_login/Pages/signup_page.dart';
import 'package:gdsc_login/Pages/widgets/custom_password.dart';

import 'widgets/custom_text_from_field.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
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
                    'Log In',
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
                    labelText: 'Email',
                    prefixIcon: Icon(
                      color: Colors.black,
                      Icons.email,
                    ),
                  ),
                  const CustomPassword(
                    labelText: 'Password',
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignUpPage();
                          }));
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
