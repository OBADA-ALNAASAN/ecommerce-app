import 'package:ecommerce_app/controller/auth/forgetpassword_controller.dart';

import 'package:ecommerce_app/view/widget/auth/custom_text_form_field.dart';
import 'package:ecommerce_app/view/widget/auth/custom_title_auth.dart';
import 'package:ecommerce_app/view/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetpasswordController controller = Get.put(ForgetpasswordController());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Forget Password",
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
                title: 'Check Email',
              ),
              SizedBox(
                height: 15,
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
              SizedBox(
                height: 10,
              ),
              CustomButton(
                onTap: () {},
                title: 'Check',
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
