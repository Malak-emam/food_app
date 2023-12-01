import 'package:demo_1/constants.dart';
import 'package:demo_1/ui/root_page.dart';
import 'package:demo_1/ui/screens/forgot_pass.dart';
import 'package:demo_1/ui/screens/signup_page.dart';
import 'package:demo_1/ui/screens/widgets/cusstom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/login.jpg',width: 500,height: 320), //replace with login image
                    const Text('Sign In',
                        style: TextStyle(
                            fontSize: 35.0, fontWeight: FontWeight.w700)),
                    const SizedBox(
                      height: 30,
                    ),
                    const CustomTextField(
                        obscureText: false,
                        hintText: 'Enter Email',
                        icon: Icons.alternate_email),
                    const CustomTextField(
                        obscureText: true,
                        hintText: 'Enter Password',
                        icon: Icons.lock),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: const RootPage(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Constants.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: const Center(
                              child: Text('Sign In',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  )))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: const ForgotPass(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Center(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                                text: 'Forgot Password?  ',
                                style: TextStyle(color: Constants.blackColor)),
                            TextSpan(
                                text: 'Reset Here',
                                style: TextStyle(color: Constants.primaryColor)),
                          ]))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(children: const [
                      Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('OR'),
                      ),
                      Expanded(child: Divider()),
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Constants.primaryColor),
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 30,
                                child: Image.asset(
                                    'assets/google.png'), //add google icon
                              ),
                              Text('Sign In with Google',
                                  style: TextStyle(
                                    color: Constants.blackColor,
                                    fontSize: 18.0,
                                  ))
                            ])),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: const SignUp(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Center(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                                text: 'New to BelHana?   ',
                                style: TextStyle(color: Constants.blackColor)),
                            TextSpan(
                                text: 'Register Now',
                                style: TextStyle(color: Constants.primaryColor)),
                          ]))),
                    ),
                  ]),
            )));
  }
}
