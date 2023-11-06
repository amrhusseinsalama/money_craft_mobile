import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/sizes.dart';
import 'package:money_craft_mobile/src/presentation/constants/text_style.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_appbar.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_button.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_button_2.dart';

class HRLetter extends StatefulWidget {
  const HRLetter({Key? key}) : super(key: key);
  @override
  State<HRLetter> createState() => _HRLetterState();
}

class _HRLetterState extends State<HRLetter> {
  @override
  Widget build(BuildContext context) {
    return CustomHRLetter(button:const Padding(
      padding: EdgeInsets.only(top: Sizes.p150),
      child: CustomButton(text: "Continue"),
    ),
        customWidget: Container(
            decoration: BoxDecoration(
                color: const Color(0xffFCE6DF),
                borderRadius: BorderRadius.circular(Sizes.p12)),
            height: Sizes.p50,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: Sizes.p8, horizontal: Sizes.p16),
              child: Text(
                  "Please make sure that the copy is well-lit, clear to read and all the information is visible",
                  style:
                      textStyleOnBoarding(10, Colors.black, FontWeight.w400)),
            )));
  }
}

class CustomHRLetter extends StatefulWidget {
  const CustomHRLetter({Key? key, required this.customWidget, required this.button})
      : super(key: key);
  final Widget customWidget;
  final Widget button;
  @override
  State<CustomHRLetter> createState() => _CustomHRLetterState();
}

class _CustomHRLetterState extends State<CustomHRLetter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline))
          ],
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          subTitle: Text(
            "Proof of Income",
            style: textStyleOnBoarding(10, Colors.black, FontWeight.w700),
          ),
          title: "HR Letter"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          gapH20,
          Text(
            "Monthly income amount",
            style: textStyleOnBoarding(12, Colors.black, FontWeight.w700),
          ),
          Text(
            "Please Input your monthly income and upload the the HR letter reflecting your monthly earnings",
            style: textStyleOnBoarding(10, Colors.black, FontWeight.w400),
          ),
          gapH12,
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                suffixText: "EGP",
                suffixStyle:
                    textStyleOnBoarding(14, Colors.black, FontWeight.w700),
                hintText: "0.00",
                hintStyle: textStyleOnBoarding(
                    14, const Color(0XFFBEBEBE), FontWeight.w400),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFFEAEAEA))),
                filled: true,
                fillColor: const Color(0XFFFAFAFA),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
          ),
          gapH20,
          const Divider(color: Color(0xffF8F4F0)),
          gapH20,
          ListTile(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                      height: Sizes.p200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Sizes.p12)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Proof of Income",
                                    style: textStyleOnBoarding(
                                        16, Colors.black, FontWeight.w700),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.close))
                                ]),
                            gapH16,
                            CustomButton2(
                              text: "Scan using your camera",
                              onPressed: () {},
                            ),
                            gapH16,
                            CustomButton2(
                              text: "Upload an existing photo",
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return CustomHRLetter(
                                      button: CustomButton2(onPressed: () {

                                      },text: "Continue"),
                                      customWidget: Container(decoration: BoxDecoration(
                                      color: const Color(0xffD9D9D9),
                                      borderRadius: BorderRadius.circular(Sizes.p12)),child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                          SizedBox(height: Sizes.p150,width: Sizes.p350,child: Image.asset("assets/images/hr_letter.png"),),
                                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                                            Text("Tap to preview",style: textStyleOnBoarding(10, Colors.black, FontWeight.w700),),
                                            Row(children: [
                                              IconButton(onPressed: () {
                                                
                                              }, icon: const Icon(color: Color(0xffEC5627),Icons.close)),
                                              Text("Delete",style: textStyleOnBoarding(10, Colors.black, FontWeight.w700))
                                            ],)
                                          ],)
                                        ]),
                                      ),));
                                },));
                              },
                            )
                          ],
                        ),
                      )));
            },
            title: Text(
              "Scanned copy of your HR letter",
              style: textStyleOnBoarding(12, Colors.black, FontWeight.w700),
            ),
            subtitle: Text(
                "Take a photo of your HR letter or upload a photo already exists on your device.",
                style: textStyleOnBoarding(10, Colors.black, FontWeight.w400)),
            leading: SizedBox(
                height: Sizes.p20,
                width: Sizes.p20,
                child: Image.asset("assets/images/upload.png")),
          ),
          gapH16,
          widget.customWidget,
          gapH150,
          widget.button
        ]),
      ),
    );
  }
}
