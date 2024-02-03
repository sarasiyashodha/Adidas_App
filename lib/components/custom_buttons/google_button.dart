import 'package:flutter/material.dart';

import '../custom_text/custom_poppins_text.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
    required this.size,
    required this.onTap,
    this.isSignIn = true
  });

  final Size size;
  final VoidCallback onTap;
  final bool isSignIn;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: size.width * 0.7,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/Google.webp", width: 25, height: 25, fit: BoxFit.fitHeight,),
              SizedBox(
                width: 5.0,
              ),
              CustomPoppinsText(text: isSignIn? "Sign in with Google" : "Sign Up with Google", fontSize: 15,)

            ],
          ),
        ),
      ),
    );
  }
}

