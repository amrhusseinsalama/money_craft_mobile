import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/sizes.dart';
import 'package:money_craft_mobile/src/presentation/constants/text_style.dart';

class CustomClosedContainer extends StatelessWidget {
  const CustomClosedContainer(
      {Key? key, required this.icon, required this.text})
      : super(key: key);
  final String icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: Sizes.p20),
        child: Container(
            height: Sizes.p50,
            decoration: BoxDecoration(
                color: const Color(0xffF0F2F8),
                borderRadius: BorderRadius.circular(Sizes.p12)),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                child: Row(children: [
                  SizedBox(
                      height: Sizes.p20,
                      width: Sizes.p20,
                      child: Image.asset(icon)),
                  gapW8,
                  Text(text,
                      style: textStyleOnBoarding(
                          14, const Color(0XFF25272C), FontWeight.w500))
                ]))));
  }
}
