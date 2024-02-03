import 'package:adidas/components/custom_buttons/custom_button1.dart';
import 'package:adidas/components/custom_text/custom_poppins_text.dart';
import 'package:adidas/components/custom_text_field/custom_textfield1.dart';
import 'package:adidas/screens/auth_screen/signin_page.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {

  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  BackButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage()),
                      );
                    },
                  ),
                  CustomPoppinsText(text: "Reset Your Password", fontSize: 22, fontWeight: FontWeight.w700,),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              CustomPoppinsText(text: "Insert your email and get password reset email.", fontSize: 14, fontWeight: FontWeight.w300,),
              SizedBox(
                height: 10,
              ),
              CustomTextField1(label: "Email", icon: Icons.email, controller: emailController,),
              SizedBox(
                height: 10.0,
              ),
              CustomButton1(size: size, text: "Send Reset Email", bgColor: Colors.orange.shade800, onTap: (){})
            ],
          ),
        ),
      ),
    );
  }
}
