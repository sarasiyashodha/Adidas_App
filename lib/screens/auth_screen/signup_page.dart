import 'package:adidas/screens/auth_screen/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/custom_buttons/custom_button1.dart';
import '../../components/custom_buttons/google_button.dart';
import '../../components/custom_text/custom_poppins_text.dart';
import '../../components/custom_text_field/custom_textfield1.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomPoppinsText(text: "Adidas", fontSize: 28.0, fontWeight: FontWeight.w600,),
              CustomPoppinsText(text: "Create New Account With Your Email & Password",
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(
                height: 10.0,
              ),
              CustomTextField1(label: "Email", icon: Icons.email, isPassword: false, controller: emailController,),
              SizedBox(
                height: 10.0,
              ),
              CustomTextField1(label: "Password", icon: Icons.password, isPassword: true, controller: passwordController,),
              SizedBox(
                height: 10,
              ),
              CustomTextField1(label: "Confirm Password", icon: Icons.password, isPassword: true, controller: confirmPasswordController,),
              SizedBox(
                height: 10,
              ),
              CustomButton1(size: size, text: "Create Account", bgColor: Colors.orange.shade800, onTap: (){},),
              SizedBox(
                height: 6.0,
              ),
              GoogleButton(size: size, onTap: (){}, isSignIn: false,),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  child: Text.rich(
                      TextSpan(text: "Already have an account?", children: [
                        TextSpan(
                            text: "Sign In",
                            style: GoogleFonts.poppins(
                                color: Colors.orange.shade800
                            )
                        )
                      ])
                  ),
                ),
              )

            ],
          ),
        ),
      ),

    );
  }
}

