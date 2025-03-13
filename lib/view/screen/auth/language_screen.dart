import 'package:ecommerce_app/view/widget/custom_button.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose Language ",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            CustomButton(
              title: 'Ar',
              onTap: () {},
            ),
            CustomButton(
              title: 'En',
              onTap: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
