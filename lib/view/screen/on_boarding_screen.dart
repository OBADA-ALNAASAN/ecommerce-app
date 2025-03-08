import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          clipBehavior: Clip.none,
          itemCount: onBoardingList.length,
          itemBuilder: (context, i) {
            return Column(
              spacing: 80,
              children: [
                Text(
                  onBoardingList[i].title!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Image.asset(onBoardingList[i].image!,height: 250,width: 200,),
                Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    )),
              ],
            );
          },
        ),
      ),
    );
  }
}
