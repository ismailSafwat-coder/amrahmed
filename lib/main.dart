import 'package:amrahmed/loginpage.dart';
import 'package:amrahmed/registerpage.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}
