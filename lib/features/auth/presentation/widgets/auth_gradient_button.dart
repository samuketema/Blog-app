import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key});

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
        child: Text('Sign In' ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
      ),
    );
  }
}
