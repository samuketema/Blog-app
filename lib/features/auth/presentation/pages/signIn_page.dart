import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  route() => MaterialPageRoute(builder: (context) => const SignUp());

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppPallete.backgroundColor,
      ),
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            
            SizedBox(
              height: 15,
            ),
            AuthField(
              hintText: 'Email',
              controller: emailController,
            ),
            SizedBox(
              height: 15,
            ),
            AuthField(
              hintText: 'Password',
              controller: passwordController,
              isObscurePassword: true,
            ),
            SizedBox(
              height: 20,
            ),
            AuthGradientButton(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(route());
              },
              child: RichText(
                text: TextSpan(
                  text: 'Don\'t have an account?  ',
                 style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(text: 'SignIn',style:Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 247, 113, 169)
                    ) )
                  ]
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
