// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller; 
  final bool isObscurePassword;
  final String hintText;
  const AuthField({
    Key? key,
    this.isObscurePassword = false,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscurePassword,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText
      ),
       validator: (value){
        if (value!.isEmpty) {
          return "Error: $hintText is required";
        }
        return null;
       },
    );
  }
}
