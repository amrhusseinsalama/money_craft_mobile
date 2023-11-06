import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/sizes.dart';
import 'package:money_craft_mobile/src/presentation/constants/text_style.dart';
import 'package:money_craft_mobile/src/presentation/screens/menu_profile.dart';
import '../widgets/custom_appbar.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "Menu", actions: const [Icon(Icons.close)]),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
            child: ListView(children: [
              CustomMenuContainer(
                  customWidget: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const Profile();
                    },
                  ));
                },
                child: Row(children: [
                  SizedBox(
                      width: Sizes.p20,
                      height: Sizes.p20,
                      child: Image.asset("assets/images/image-user-right.png")),
                  gapW12,
                  Text("View Profile",
                      style: textStyleOnBoarding(
                          14, Colors.white, FontWeight.w700))
                ]),
              )),
              ListView.builder(
                  itemCount: menuItems.length,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    return Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: Sizes.p20,
                                width: Sizes.p20,
                                child: Image.asset("${menuItems[i].image}")),
                            gapW16,
                            Text("${menuItems[i].title}",
                                style: textStyleOnBoarding(
                                    16, Colors.black, FontWeight.w500)),
                            gapW8,
                            SizedBox(
                                child: i == 2
                                    ? Container(
                                        decoration: BoxDecoration(
                                            color: const Color(0xffDDD8D4),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        height: Sizes.p20,
                                        width: Sizes.p30,
                                        child: Center(
                                            child: Text(
                                          "0",
                                          style: textStyleOnBoarding(
                                              14,
                                              const Color(0XFF859AF7),
                                              FontWeight.w500),
                                        )))
                                    : null)
                          ]),
                      gapH30
                    ]);
                  })
            ])));
  }
}

class CustomMenu {
  CustomMenu(this.image, this.title, this.onPressed);
  String? image;
  String? title;
  void Function()? onPressed;
}

List<CustomMenu> menuItems = [
  CustomMenu("assets/images/home.png", "Home", () {}),
  CustomMenu("assets/images/coins-swap.png", "My Circles", () {}),
  CustomMenu("assets/images/gift.png", "Points", () {}),
  CustomMenu("assets/images/bank-note.png", "Payments", () {}),
  CustomMenu("assets/images/bell.png", "Notifications", () {}),
  CustomMenu("assets/images/diamond.png", "Offers", () {}),
  CustomMenu("assets/images/user-plus.png", "Invite Friends", () {}),
  CustomMenu("assets/images/settings.png", "Settings", () {}),
  CustomMenu("assets/images/message-question-circle.png", "Help", () {})
];

class CustomMenuContainer extends StatelessWidget {
  const CustomMenuContainer({Key? key, required this.customWidget})
      : super(key: key);
  final Widget customWidget;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: Sizes.p25),
        child: Container(
            height: Sizes.p180,
            decoration: BoxDecoration(
                color: const Color(0xff2B4FF2),
                borderRadius: BorderRadius.circular(Sizes.p12)),
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.p25, vertical: Sizes.p16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi Ahmed",
                          style: textStyleOnBoarding(
                              18, Colors.white, FontWeight.w700)),
                      Text("+49 176 30386676",
                          style: textStyleOnBoarding(
                              12, Colors.white, FontWeight.w400)),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: Sizes.p16),
                          child: Divider(color: Color(0xff859AF7))),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Text("Your Circle Limit",
                                        style: textStyleOnBoarding(
                                            10, Colors.white, FontWeight.w400)),
                                    gapW8,
                                    const Icon(
                                        size: 12,
                                        Icons.info_outline,
                                        color: Colors.white)
                                  ]),
                                  gapH12,
                                  Row(children: [
                                    SizedBox(
                                        width: Sizes.p20,
                                        height: Sizes.p20,
                                        child: Image.asset(
                                            "assets/images/coins-hand.png")),
                                    gapW12,
                                    Text("\$5,000",
                                        style: textStyleOnBoarding(
                                            14, Colors.white, FontWeight.w700))
                                  ])
                                ]),
                            customWidget
                          ])
                    ]))));
  }
}
