import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gdsc_login/custom_password.dart';

import 'custom_password.dart';
import 'custom_password.dart';

class CustomPassword extends StatefulWidget {
  const CustomPassword({
    Key? key,
    required this.labelText,
    required this.prefixIcon,
  }) : super(key: key);
  final String labelText;
  final Widget prefixIcon;

  @override
  State<CustomPassword> createState() => _CustomPasswordState();
}

class _CustomPasswordState extends State<CustomPassword> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'field is required';
          }
          return null;
        },
        obscureText: obscureText,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(
                () {
                  obscureText = !obscureText;
                },
              );
            },
          ),
          prefixIcon: widget.prefixIcon,
          labelText: widget.labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
