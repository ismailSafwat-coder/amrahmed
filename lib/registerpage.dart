import 'package:amrahmed/custom/custombuttom.dart';
import 'package:amrahmed/custom/customtextfiled.dart';
import 'package:amrahmed/homepage.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static String id = 'registerPage';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Form(
            key: formState,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage(
                          'https://marketplace.canva.com/EAGI-gQqvzE/1/0/800w/canva-black-white-building-business-company-logo-tHPXWQjm46o.jpg')),
                  const Text(
                    "  SH  clothing ",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontFamily: 'pacifico'),
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  const Row(
                    children: [
                      Text(
                        "  Sign up  ",
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontFamily: 'pacifico'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 19.5,
                  ),
                  CustomTextFiled(
                      hinttext: 'Email',
                      controller: emailController,
                      obscureText: false),
                  const SizedBox(
                    height: 19.5,
                  ),
                  CustomTextFiled(
                      hinttext: 'password',
                      controller: passwordController,
                      obscureText: false),
                  const SizedBox(
                    height: 19.9,
                  ),
                  MaterialButton(
                      child: const Text('sign up'),
                      onPressed: () {
                        if (formState.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homepage()));
                        }
                      }),
                  // CustomBotton(
                  //     text: ' register  ',
                  //     onTap: () {
                  //       if (formState.currentState!.validate()) {
                  //         Navigator.pushReplacement(
                  //             context,
                  //             MaterialPageRoute(
                  //                 builder: (context) => const Homepage()));
                  //       }
                  //     }),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        ' already  have an account ',
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'pacifico',
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          '   login ',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'pacifico',
                              fontSize: 20),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
