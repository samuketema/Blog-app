// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:blog_app/core/theme/app_pallete.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttonText;
  const AuthGradientButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(colors: [
          AppPallete.gradient1,
          AppPallete.gradient2,
          AppPallete.gradient3
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight)
        
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
         fixedSize: const Size(395, 55)
        ),
        onPressed: () {},
        child: Text(buttonText,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
      ),
    );
  }
}
