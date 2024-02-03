import 'package:adidas/screens/auth_screen/forgot_password.dart';
import 'package:adidas/screens/auth_screen/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/custom_buttons/custom_button1.dart';
import '../../components/custom_buttons/google_button.dart';
import '../../components/custom_text/custom_poppins_text.dart';
import '../../components/custom_text_field/custom_textfield1.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
              CustomPoppinsText(text: "Please fill your details to access your account",
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
              Row(
                children: [
                  Checkbox(value: false, onChanged: (val){},
                    shape: OvalBorder(),
                  ),
                  CustomPoppinsText(text: "Remember me", fontSize: 14.0, fontWeight: FontWeight.w300,),
                  Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                      );
                    },
                      child: CustomPoppinsText(text: "Forgot password?", color: Colors.orange.shade800, fontSize: 14.0, fontWeight: FontWeight.w300,)),
                  SizedBox(
                    height: 10,
                  )

                ],
              ),
              CustomButton1(size: size, text: "Sign In", bgColor: Colors.orange.shade800, onTap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },),
              SizedBox(
                height: 6.0,
              ),
              GoogleButton(size: size, onTap: (){}, ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text.rich(
                  TextSpan(text: "Don't have an account?", children: [
                    TextSpan(
                      text: "Sign Up",
                      style: GoogleFonts.poppins(
                        color: Colors.orange.shade800
                      )
                    )
                  ])
                ),
              )

            ],
          ),
        ),
      ),

    );
  }
}

