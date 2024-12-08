import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/pages/signIn_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  route() => MaterialPageRoute(builder: (context) => const SignIn());

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final namelController = TextEditingController();
  final formKey = GlobalKey();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    namelController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up.',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            AuthField(
              hintText: 'Name',
              controller: namelController,
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
            AuthGradientButton(buttonText: 'Sign Up',),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(route());
              },
              child: RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                 style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(text: ' SignIn',style:Theme.of(context).textTheme.titleMedium?.copyWith(
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
