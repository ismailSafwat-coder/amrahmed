import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final bool obscureText;

  const CustomTextFiled({
    super.key,
    required this.hinttext,
    required this.controller,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        validator: (value) {
          if (value == '') {
            return '$hinttext can\'t be empty';
          }
          return null;
        },
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: hinttext,
          labelStyle: TextStyle(
              color: Theme.of(context).colorScheme.primary, fontSize: 21),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.tertiary)),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ),
    );
  }
}
