import 'package:ecommerce_app/controller/auth/sign_up_contoller.dart';

import 'package:ecommerce_app/view/widget/auth/custom_body_text_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form_field.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_signin_or_login.dart';
import 'package:ecommerce_app/view/widget/auth/custom_title_auth.dart';
import 'package:ecommerce_app/view/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpContoller controller = Get.put(SignUpContoller());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Sign Up",
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
                label: 'User Name',
                icon: Icons.person_outline,
                hint: 'Enter your Name',
                textEditingController: controller.username,
              ),
              CustomTextFormField(
                label: 'Email',
                icon: Icons.email_outlined,
                hint: 'Enter your Email',
                textEditingController: controller.email,
              ),
              CustomTextFormField(
                label: 'Password',
                icon: Icons.phone_android_outlined,
                hint: 'Enter your Phone',
                textEditingController: controller.phone,
              ),
              CustomTextFormField(
                label: 'Password',
                icon: Icons.lock_outline,
                hint: 'Enter your Password',
                textEditingController: controller.password,
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
              CustomTextSigninOrLogin(
                onTap: () {
                  controller.goToLogin();
                },
                text1: "Dont have an account?",
                text2: "Sign Up",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
