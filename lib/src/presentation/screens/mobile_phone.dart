import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/sizes.dart';
import 'package:money_craft_mobile/src/presentation/constants/text_style.dart';
import 'package:money_craft_mobile/src/presentation/screens/mobile_phone2.dart';

class MobilePhone extends StatefulWidget {
  const MobilePhone({Key? key}) : super(key: key);

  @override
  State<MobilePhone> createState() => _MobilePhoneState();
}

class _MobilePhoneState extends State<MobilePhone> {
  @override
  Widget build(BuildContext context) {
    return CustomMobilePhoneScreen(
        text1: "Enter your mobile Number",
        text2:
            "We will send you a verification code to verify your mobile phone number",
        formWidget: [
          gapH400,
          Container(
              height: Sizes.p80,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Sizes.p12),
                      topRight: Radius.circular(Sizes.p12)),
                  color: Color(0XFF2B4FF2)),
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF8F4F0),
                          borderRadius: BorderRadius.circular(Sizes.p8)),
                      width: Sizes.p60,
                    ),
                    gapW12,
                    SizedBox(
                      width: 248,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            suffix: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const MobilePhone2(),
                                      ));
                                },
                                child: Text(
                                  "NEXT",
                                  style: textStyleOnBoarding(14,
                                      const Color(0xffB7B7B7), FontWeight.w700),
                                )),
                            filled: true,
                            fillColor: const Color(0xffF8F4F0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(Sizes.p8))),
                      ),
                    )
                  ])))
        ]);
  }
}

class CustomMobilePhoneScreen extends StatelessWidget {
  const CustomMobilePhoneScreen(
      {Key? key,
      required this.formWidget,
      required this.text1,
      required this.text2})
      : super(key: key);
  final String text1;
  final String text2;
  final List<Widget> formWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(
                top: Sizes.p50, right: Sizes.p20, left: Sizes.p20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Get started",
                            style: textStyleOnBoarding(
                                20, const Color(0xff25272C), FontWeight.w700)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                                color: Color(0xff25272C), Icons.info_outline))
                      ],
                    ),
                    gapH20,
                    Text(text1,
                        style: textStyleOnBoarding(
                            20, const Color(0XFF25272C), FontWeight.w700)),
                    gapH12,
                    Text(text2,
                        style: textStyleOnBoarding(
                            16, const Color(0XFF25272C), FontWeight.w400)),
                    Column(children: formWidget)
                  ]),
            )));
  }
}
