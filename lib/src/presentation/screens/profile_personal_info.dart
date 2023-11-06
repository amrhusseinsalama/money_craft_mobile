import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/text_style.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_appbar.dart';
import '../constants/sizes.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            title: widget.title, leading: const Icon(Icons.arrow_back)),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  gapH25,
              Container(
                  height: Sizes.p70,
                  decoration: BoxDecoration(
                      color: const Color(0xffF8F4F0),
                      borderRadius: BorderRadius.circular(Sizes.p12)),
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(children: [
                        const Icon(Icons.info_outline),
                        gapW8,
                        Text(
                          "Your personal information below reflect your current\nidentification details, currently you can’t update your\ninformation.",
                          style: textStyleOnBoarding(
                              12, Colors.black, FontWeight.w400),
                        )
                      ]))),
              gapH25,
              const CustomPersonalInfo(title: "First name",subTitle: "Mohamed"),
              const CustomPersonalInfo(title: "Last name",subTitle: "Alshafii"),
              const CustomPersonalInfo(title: "Phone Number",subTitle: "+20 1111177011"),
              const CustomPersonalInfo(title: "Email Address",subTitle: "muhammad@eslhafie.me")
            ])));
  }
}

class CustomPersonalInfo extends StatelessWidget {
  const CustomPersonalInfo(
      {Key? key, required this.title, required this.subTitle})
      : super(key: key);
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Text(title,
      style: textStyleOnBoarding(12, Colors.grey, FontWeight.w400)),
      gapH4,
      Text(subTitle,
      style: textStyleOnBoarding(14, Colors.grey, FontWeight.w500)),
      gapH20
    ]);
  }
}
