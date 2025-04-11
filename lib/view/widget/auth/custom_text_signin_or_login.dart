import 'package:flutter/material.dart';

class CustomTextSigninOrLogin extends StatelessWidget {
  final void Function()? onTap;
  final String text1;
  final String text2;
  const CustomTextSigninOrLogin({super.key, this.onTap, required this.text1, required this.text2});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          textAlign: TextAlign.end,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            textAlign: TextAlign.end,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
