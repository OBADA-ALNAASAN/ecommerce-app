import 'package:ecommerce_app/controller/auth/login_controller.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_text_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_forget_password.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_signin_or_login.dart';
import 'package:ecommerce_app/view/widget/auth/custom_title_auth.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form_field.dart';
import 'package:ecommerce_app/view/widget/auth/logo_auth.dart';
import 'package:ecommerce_app/view/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
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
                textEditingController: controller.email,
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
             CustomForgetPassword(),
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
                  controller.goToSignUp();
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
