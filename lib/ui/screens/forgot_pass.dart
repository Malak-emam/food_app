import 'package:demo_1/constants.dart';
import 'package:demo_1/ui/screens/login_page.dart';
import 'package:demo_1/ui/root_page.dart';
import 'package:demo_1/ui/screens/widgets/cusstom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

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
                    Image.asset(
                        'assets/forgot_pass.jpg'), //replace with forgotpass image
                    const Text('Forgot Password',
                        style: TextStyle(
                            fontSize: 35.0, fontWeight: FontWeight.w700)),
                    const SizedBox(
                      height: 30,
                    ),
                    const CustomTextField(
                        obscureText: false,
                        hintText: 'Enter Email',
                        icon: Icons.alternate_email),

                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Constants.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: const Center(
                              child: Text('Reset Password',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  )))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: const Login(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Center(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                                text: 'Already Have an Account?   ',
                                style: TextStyle(color: Constants.blackColor)),
                            TextSpan(
                                text: 'Login',
                                style: TextStyle(color: Constants.primaryColor)),
                          ]))),
                    ),
                  ]),
            )));
  }
}
