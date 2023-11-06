import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/sizes.dart';
import 'package:money_craft_mobile/src/presentation/constants/text_style.dart';
import 'package:money_craft_mobile/src/presentation/screens/mobile_phone.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_button.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_closed_container.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_open_container.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController nextPage = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: Padding(
                  padding: const EdgeInsets.only(right: Sizes.p200),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome to",
                            style: textStyleOnBoarding(
                                14, const Color(0xff25272C), FontWeight.w700)),
                        Text("MoneyCraft",
                            style: textStyleOnBoarding(
                                28, const Color(0xff25272C), FontWeight.w700))
                      ]))),
          elevation: 0,
          backgroundColor: const Color(0xffFCFCFE),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text("Skip",
                    style: textStyleOnBoarding(
                        14, const Color(0xff25272C), FontWeight.w700)))
          ],
          leading: Padding(
            padding: const EdgeInsets.only(left: Sizes.p12),
            child: Row(
              children: [
                Text("EN",
                    style: textStyleOnBoarding(
                        14, const Color(0xff25272C), FontWeight.w700)),
                SizedBox(
                    height: Sizes.p20,
                    width: Sizes.p20,
                    child: Image.asset("assets/icons/chevron-down.png"))
              ],
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
            child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: nextPage,
                children: [
                  SingleChildScrollView(
                    child: Column(children: [
                      CustomOpenContainer(images: [
                        Image.asset("assets/images/Frame1.png"),
                        Positioned(
                          left: Sizes.p20,
                          child: SizedBox(
                              width: Sizes.p350,
                              height: Sizes.p200,
                              child: Image.asset("assets/images/img1.png")),
                        )
                      ]),
                      const CustomClosedContainer(
                          icon: "assets/icons/coins-hand.png", text: "Smart"),
                      const CustomClosedContainer(
                          icon: "assets/icons/settings.png",
                          text: "You are in control"),
                      CustomButton(
                          text: "Next",
                          onPressed: () {
                            nextPage.animateToPage(1,
                                duration: const Duration(microseconds: 700),
                                curve: Curves.linear);
                          })
                    ]),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const CustomClosedContainer(
                            icon: "assets/icons/shield-tick.png",
                            text: "Trusted"),
                        CustomOpenContainer(
                          images: [
                            Image.asset("assets/images/Frame2.png"),
                            Positioned(
                                right: Sizes.p25,
                                bottom: Sizes.p130,
                                top: Sizes.p20,
                                left: Sizes.p50,
                                child: SizedBox(
                                    width: Sizes.p300,
                                    height: Sizes.p250,
                                    child:
                                        Image.asset("assets/images/img2.png"))),
                            Positioned(
                                right: Sizes.p200,
                                bottom: Sizes.p130,
                                left: Sizes.p60,
                                top: Sizes.p150,
                                child: SizedBox(
                                    width: Sizes.p150,
                                    height: Sizes.p100,
                                    child: Image.asset(
                                        "assets/images/Woman.png"))),
                            Positioned(
                              top: Sizes.p25,
                              left: Sizes.p40,
                              child: SizedBox(
                                height: Sizes.p50,
                                width: Sizes.p50,
                                child: Image.asset(
                                    "assets/images/🦆 icon _money donation thin_.png"),
                              ),
                            )
                          ],
                        ),
                        const CustomClosedContainer(
                            icon: "assets/icons/settings.png",
                            text: "You are in control"),
                        CustomButton(
                          text: "Next",
                          onPressed: () {
                            nextPage.animateToPage(2,
                                duration: const Duration(microseconds: 700),
                                curve: Curves.linear);
                          },
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                      child: Column(children: [
                    const CustomClosedContainer(
                        icon: "assets/icons/shield-tick.png", text: "Trusted"),
                    const CustomClosedContainer(
                        icon: "assets/icons/coins-hand_colored.png",
                        text: "Smart"),
                    CustomOpenContainer(
                      images: [
                        Image.asset("assets/images/Frame3.png"),
                        Positioned(
                            left: Sizes.p60,
                            bottom: Sizes.p150,
                            child: SizedBox(
                                height: Sizes.p250,
                                width: Sizes.p350,
                                child: Image.asset("assets/images/img3.png")))
                      ],
                    ),
                    CustomButton(
                        text: "Lets get started",
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MobilePhone();
                          }));
                        })
                  ]))
                ])));
  }
}
