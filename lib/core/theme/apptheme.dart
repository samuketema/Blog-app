import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class Apptheme {
   static borderProperty({Color color = AppPallete.borderColor}) =>  OutlineInputBorder(
        borderSide: BorderSide(
          color:color,
          width: 3
        ),
        borderRadius:  BorderRadius.circular(10)
      );
  static final darkthememode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder:borderProperty(),
      focusedBorder: borderProperty(color:AppPallete.gradient2),
      contentPadding: EdgeInsets.all(27)
    )
  );
}