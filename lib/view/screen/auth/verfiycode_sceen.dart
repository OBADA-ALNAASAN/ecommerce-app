import 'package:ecommerce_app/view/widget/auth/custom_title_auth.dart';
import 'package:ecommerce_app/view/widget/custom_button.dart';
import 'package:flutter/material.dart';

class VerfiycodeSceen extends StatelessWidget {
  const VerfiycodeSceen({super.key});

  @override
  Widget build(BuildContext context) {
    //VerfiycodeController controller = Get.put(VerfiycodeController());
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
