import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Expanded(
          
          child: Column(
            
            children: [
              PageView.builder(
                itemCount: onBoardingList.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Text(onBoardingList[i].title!),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
