import 'package:ecommerce_app/view/widget/auth/custom_body_text_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_title_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form_field.dart';
import 'package:ecommerce_app/view/widget/auth/logo_auth.dart';
import 'package:ecommerce_app/view/widget/custom_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Sign In",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.grey),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: ListView(
            children: [
              LogoAuth(),
              CustomTitleAuth(
                title: 'Welcom Back',
              ),
              SizedBox(
                height: 15,
              ),
              CustomBodyTextAuth(
                text:
                    'Sign in with your Email and Password or continue with social media',
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                label: 'Email',
                icon: Icons.email_outlined,
                hint: 'Enter your Email',
              ),
              CustomTextFormField(
                label: 'Password',
                icon: Icons.lock_outline,
                hint: 'Enter your Password',
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Forget Password",
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                onTap: () {},
                title: 'Sign in',
              ),
              SizedBox(
                height: 10,
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                "Dont have an account?",
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.bodySmall,
              ),
                    InkWell(
                      onTap: (){},
                      child: Text(
                      "Sign Up",
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.bodySmall,
                                    ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
