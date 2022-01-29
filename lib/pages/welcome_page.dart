
import 'package:flutter/material.dart';
import 'package:snow_mountain/misc/colors.dart';
import 'package:snow_mountain/widgets/app_large_text.dart';
import 'package:snow_mountain/widgets/app_text.dart';
import 'package:snow_mountain/widgets/responsicve_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  List texts =[
    "Mountain hikes give you an incredible sense of freedom along with endurance tests",
    "Mountain hikes give you an incredible sense of freedom along with dynamic Natures",
    "Mountain hikes give you an incredible sense of freedom along with beautiful images",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/" + images[index]),
                    //画面いっぱいにする
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  //幅をマックスに
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      //初めを揃える
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(
                          text: "Mountain",
                          size: 30,
                        ),
                        SizedBox(height: 20),
                        //Containerで囲うとうまく、折り返しができる
                        Container(
                          width: 250,
                          child: AppText(
                            text: texts[index],
                            color: AppColors.textColor2,
                            size: 14,
                          ),
                        ),
                        SizedBox(height: 40,),
                        ResponsiveButton(width: 120,),
                      ],
                    ),
                    //ページスクロールバー
                    Column(
                      children:
                        List.generate(3, (indexDots) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            width: 8,
                            height: index == indexDots?25:8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots?AppColors.mainColor:AppColors.mainColor.withOpacity(0.3)
                            ),
                          );
                        })
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
