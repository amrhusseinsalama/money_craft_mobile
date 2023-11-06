import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/sizes.dart';
import 'package:money_craft_mobile/src/presentation/constants/text_style.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_appbar.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_button.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_button_2.dart';

class GetDocuments extends StatefulWidget {
  const GetDocuments(
      {Key? key,
      required this.title,
      required this.appBarTitle,
      required this.subtitle})
      : super(key: key);
  final String appBarTitle;
  final String title;
  final String subtitle;
  @override
  State<GetDocuments> createState() => _CustomGetDocumentsState();
}

class _CustomGetDocumentsState extends State<GetDocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline))
            ],
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back)),
            subTitle: Text(
              "My Documents",
              style: textStyleOnBoarding(10, Colors.black, FontWeight.w700),
            ),
            title: widget.appBarTitle),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
          child: Column(children: [
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
            gapH20,
            ListTile(
              title: Text(
                widget.title,
                style: textStyleOnBoarding(12, Colors.black, FontWeight.w700),
              ),
              subtitle: Text(widget.subtitle,
                  style: textStyleOnBoarding(10, Colors.black, FontWeight.w400)),
              leading: SizedBox(
                  height: Sizes.p20,
                  width: Sizes.p20,
                  child: Image.asset("assets/images/upload.png")),
            ),
            gapH30,
            Container(
                decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(Sizes.p12)),
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Sizes.p150,
                            width: Sizes.p350,
                            child: Image.asset("assets/images/passport.png"),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Tap to preview",
                                  style: textStyleOnBoarding(
                                      10, Colors.black, FontWeight.w700),
                                ),
                                Row(children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          color: Color(0xffEC5627), Icons.close)),
                                  Text("Delete",
                                      style: textStyleOnBoarding(
                                          10, Colors.black, FontWeight.w700))
                                ])
                              ])
                        ]))),
            gapH150,
            CustomButton(onPressed: () {}, text: "Continue")
          ]),
        ));
  }
}
