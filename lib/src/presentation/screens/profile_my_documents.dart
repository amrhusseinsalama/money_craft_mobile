import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/sizes.dart';
import 'package:money_craft_mobile/src/presentation/constants/text_style.dart';
import 'package:money_craft_mobile/src/presentation/screens/get_documents.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_appbar.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_button_2.dart';

class MyDocuments extends StatefulWidget {
  const MyDocuments({Key? key}) : super(key: key);

  @override
  State<MyDocuments> createState() => _MyDocumentsState();
}

class _MyDocumentsState extends State<MyDocuments> {
  String? proof = "HR Letter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            title: "My documents",
            leading: const Icon(Icons.arrow_back),
            actions: const [Icon(Icons.info_outline)]),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
            child: SingleChildScrollView(
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
                            Text(
                              "To increase your circle limit, complete the following required\ndocuments",
                              style: textStyleOnBoarding(
                                  12, Colors.black, FontWeight.w400),
                            )
                          ]))),
                  gapH40,
                  CustomMyDocuments(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const GetDocuments(
                                title: "Scanned copy of your National ID",
                                appBarTitle: "National ID",
                                subtitle:
                                    "Take a photo of your National ID or upload a photo already exists on your device.");
                          },
                        ));
                      },
                      title: "National ID",
                      subTitle:
                          "Your national ID helps us verify your identity and who you are.",
                      icon: "assets/images/national_id.png",
                      customWidget: const [
                        Row(children: [
                          CustomVerifiedContainer(
                              textColor: Colors.white,
                              text: "Verified",
                              width: Sizes.p50,
                              color: Color(0xff32CD9E)),
                          gapW4,
                          CustomVerifiedContainer(
                              text: "Expires: 07/29/2026",
                              width: 113,
                              color: Color(0XFFDDD8D4),
                              textColor: Colors.black)
                        ])
                      ]),
                  CustomMyDocuments(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const GetDocuments(
                                title: "Scanned copy of your Car License",
                                appBarTitle: "Car License",
                                subtitle:
                                    "Take a photo of your Car License or upload a photo already exists on your device.");
                          },
                        ));
                      },
                      customWidget: const [
                        Row(children: [
                          CustomVerifiedContainer(
                              textColor: Colors.white,
                              text: "Verified",
                              width: Sizes.p50,
                              color: Color(0xff32CD9E)),
                          gapW4,
                          CustomVerifiedContainer(
                              text: "Expires: 6/01/2024",
                              width: 106,
                              color: Color(0XFFDDD8D4),
                              textColor: Colors.black)
                        ])
                      ],
                      title: "Car License",
                      subTitle:
                          "Your License ID helps us do a 2nd level verification of your identity and who you are.",
                      icon: "assets/images/car_license.png"),
                  CustomMyDocuments(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                  height: Sizes.p350,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12))),
                                  child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Proof of Income",
                                                    style: textStyleOnBoarding(
                                                        16,
                                                        Colors.black,
                                                        FontWeight.w700),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                          Icons.close))
                                                ]),
                                            Text(
                                                "Please choose the type of document to upload from the following options",
                                                style: textStyleOnBoarding(
                                                    12,
                                                    Colors.black,
                                                    FontWeight.w400)),
                                            gapH20,
                                            RadioListTile(
                                              title: Text(
                                                "HR Letter",
                                                style: textStyleOnBoarding(
                                                    14,
                                                    Colors.black,
                                                    FontWeight.w700),
                                              ),
                                              subtitle: Text(
                                                "Upload a recently signed & stamped HR letter by your employer no older that 2 weeks",
                                                style: textStyleOnBoarding(
                                                    12,
                                                    Colors.black,
                                                    FontWeight.w400),
                                              ),
                                              value: "HR Letter",
                                              groupValue: proof,
                                              onChanged: (value) {
                                                setState(() {
                                                  proof = value;
                                                });
                                              },
                                            ),
                                            RadioListTile(
                                              title: Text(
                                                "Bank Statement",
                                                style: textStyleOnBoarding(
                                                    14,
                                                    Colors.black,
                                                    FontWeight.w700),
                                              ),
                                              subtitle: Text(
                                                "Upload a recent bank statement from your bank reflecting the last 3 months transactions",
                                                style: textStyleOnBoarding(
                                                    12,
                                                    Colors.black,
                                                    FontWeight.w400),
                                              ),
                                              value: "Bank Statement",
                                              groupValue: proof,
                                              onChanged: (value) {
                                                setState(() {
                                                  proof = value;
                                                });
                                              },
                                            ),
                                            gapH20,
                                            const CustomButton2(
                                                text: "Continue")
                                          ])));
                            });
                      },
                      title: "Proof of Income",
                      subTitle:
                          "A proof income such as your salary or recent bank statement",
                      icon: "assets/images/proof_income.png",
                      customWidget: const [
                        CustomVerifiedContainer(
                            text: "High Priority",
                            width: 80,
                            color: Color(0XFFEC5627),
                            textColor: Colors.white)
                      ]),
                  CustomMyDocuments(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const GetDocuments(
                                title: "Scanned copy of your Utility Bill",
                                appBarTitle: "Utility Bill",
                                subtitle:
                                    "Take a photo of your Utility Bill or upload a photo already exists on your device.");
                          },
                        ));
                      },
                      title: "Utility Bill",
                      subTitle:
                          "Providing a utility bill helps us verify your residency, it should be under your name or a first degree relative living with you in the same house-hold.",
                      icon: "assets/images/utility_bill.png",
                      customWidget: const [
                        CustomVerifiedContainer(
                            text: "New",
                            width: 40,
                            color: Color(0XFF859AF7),
                            textColor: Colors.white)
                      ]),
                  CustomMyDocuments(
                      onTap: () {},
                      title: "Club ID",
                      subTitle: "A photo copy of your Club ID membership Card",
                      icon: "assets/images/club_id.png"),
                  CustomMyDocuments(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const GetDocuments(
                                title: "Scanned copy of your Union ID",
                                appBarTitle: "Union ID",
                                subtitle:
                                    "Take a photo of your Union ID or upload a photo already exists on your device.");
                          },
                        ));
                      },
                      title: "Union ID",
                      subTitle: "A photo copy of your Union ID Card",
                      icon: "assets/images/union_id.png")
                ]))));
  }
}

class CustomMyDocuments extends StatelessWidget {
  const CustomMyDocuments(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.icon,
      this.customWidget = const [],
      required this.onTap})
      : super(key: key);
  final String title;
  final String subTitle;
  final String icon;
  final List<Widget> customWidget;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
                height: Sizes.p16, width: Sizes.p16, child: Image.asset(icon)),
            Row(children: customWidget)
          ]),
          gapH8,
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(title,
                style: textStyleOnBoarding(14, Colors.black, FontWeight.w500)),
            const Icon(size: 15, color: Colors.grey, Icons.keyboard_arrow_right)
          ]),
          gapH4,
          Text(subTitle,
              style: textStyleOnBoarding(12, Colors.black, FontWeight.w400)),
          gapH20,
          const Divider(color: Color(0xffF8F4F0)),
          gapH12
        ],
      ),
    );
  }
}

class CustomVerifiedContainer extends StatelessWidget {
  const CustomVerifiedContainer(
      {Key? key,
      required this.text,
      required this.width,
      required this.color,
      required this.textColor})
      : super(key: key);
  final String text;
  final double width;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: Sizes.p20,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffF7E585)),
            color: color,
            borderRadius: BorderRadius.circular(Sizes.p4)),
        child: Center(
            child: Text(text,
                style: textStyleOnBoarding(10, textColor, FontWeight.w700))));
  }
}
