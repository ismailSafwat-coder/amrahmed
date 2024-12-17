// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  void Function()? onTap;
  String text;
  CustomBotton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(17)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontFamily: 'pacifico', fontSize: 25),
          ),
        ),
      ),
    );
  }
}
