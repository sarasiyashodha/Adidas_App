import 'package:flutter/material.dart';

class CustomTextField1 extends StatefulWidget {
  const CustomTextField1({
    required this.label,
    required this.icon,
    required this.controller,
    this.isPassword = false,
    super.key,
  });

  final String label;
  final IconData icon;
  final TextEditingController controller;
  final bool isPassword;

  @override
  State<CustomTextField1> createState() => _CustomTextField1State();
}

class _CustomTextField1State extends State<CustomTextField1> {
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure,
      controller: widget.controller,
      decoration: InputDecoration(
          label: Text(widget.label),
          border: OutlineInputBorder(),
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.isPassword ?  InkWell(
              onTap: (){
                setState(() {
                  isObscure = !isObscure;
                });
              },
              child: Icon(isObscure?  Icons.visibility: Icons.visibility_off)) : null
      ),
    );
  }
}

