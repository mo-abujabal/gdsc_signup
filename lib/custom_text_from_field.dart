import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({
    Key? key,
    required this.labelText,
    required this.prefixIcon,
    this.onChanged,
  }) : super(key: key);
  final String labelText;
  final Widget prefixIcon;
  final Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        onChanged: onChanged,
        validator: (value) {
          if (value!.isEmpty) {
            return 'field is required';
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
