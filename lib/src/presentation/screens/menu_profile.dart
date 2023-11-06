import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/text_style.dart';
import 'package:money_craft_mobile/src/presentation/screens/menu.dart';
import 'package:money_craft_mobile/src/presentation/screens/profile_my_documents.dart';
import 'package:money_craft_mobile/src/presentation/screens/profile_personal_info.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_appbar.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_button_2.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../constants/sizes.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool status = false;
  String? language;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            title: "Profile", leading: const Icon(Icons.arrow_back)),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomMenuContainer(
                  customWidget: Container(
                      height: Sizes.p40,
                      width: Sizes.p150,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffF0F2F8)),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("How circle limits works?",
                                style: textStyleOnBoarding(
                                    10, Colors.white, FontWeight.w400)),
                            gapW8,
                            const Icon(
                                size: 12,
                                color: Colors.white,
                                Icons.keyboard_arrow_right)
                          ]))),
              customText("Account"),
              gapH16,
              Row(children: [
                CustomProfileContainer(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const PersonalInfo(
                          title: "Personal Info",
                        );
                      }));
                    },
                    customWidget: null,
                    icon: "assets/images/Personal_Info.png",
                    text: "Personal Info"),
                gapW16,
                CustomProfileContainer(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const MyDocuments();
                      }));
                    },
                    customWidget: null,
                    icon: "assets/images/My_documents.png",
                    text: "My documents")
              ]),
              gapH16,
              CustomProfileContainer(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const PersonalInfo(title: "Invite friends");
                    }));
                  },
                  icon: "assets/images/Invite_friends.png",
                  customWidget: null,
                  text: "Invite friends"),
              gapH25,
              customText("Security"),
              gapH16,
              Row(children: [
                CustomProfileContainer(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const PersonalInfo(title: "Invite friends");
                      }));
                    },
                    icon: "assets/images/Change_passcode.png",
                    customWidget: null,
                    text: "Change passcode"),
                gapW16,
                CustomProfileContainer(
                    onTap: () {},
                    icon: "assets/images/face_id.png",
                    customWidget: FlutterSwitch(
                        activeColor: Colors.white,
                        inactiveColor: Colors.white,
                        toggleColor: Colors.white,
                        toggleBorder: Border.all(
                            width: 3, color: const Color(0xff2B4FF2)),
                        switchBorder: Border.all(
                            width: 3, color: const Color(0xff2B4FF2)),
                        width: 45.0,
                        height: 30.0,
                        toggleSize: 15.0,
                        value: status,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        }),
                    text: "Biometrics")
              ]),
              gapH25,
              customText("Settings"),
              gapH16,
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                          height: Sizes.p250,
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
                                        "Choose your Preferred Language",
                                        style: textStyleOnBoarding(
                                            16, Colors.black, FontWeight.w700),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.close))
                                    ]),
                                RadioListTile(
                                  title: const Text("English"),
                                  value: "English",
                                  groupValue: language,
                                  onChanged: (val) {
                                    setState(() {
                                      language = val;
                                    });
                                  },
                                ),
                                RadioListTile(
                                  title: const Text("Arabic"),
                                  value: "Arabic",
                                  groupValue: language,
                                  onChanged: (value) {
                                    setState(() {
                                      language = value;
                                    });
                                  }
                                ),
                                gapH8,
                                const CustomButton2(text: "Continue")
                              ],
                            ),
                          )));
                },
                child: Container(
                    height: Sizes.p80,
                    decoration: BoxDecoration(
                        color: const Color(0xfff4f4f4),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: Sizes.p20, horizontal: Sizes.p16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: Sizes.p16,
                                height: Sizes.p16,
                                child:
                                    Image.asset("assets/images/Langauge.png"),
                              ),
                              gapH4,
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Language",
                                      style: textStyleOnBoarding(
                                          14, Colors.black, FontWeight.w400),
                                    ),
                                    Row(children: [
                                      Text(
                                        "English",
                                        style: textStyleOnBoarding(
                                            12, Colors.black, FontWeight.w700),
                                      ),
                                      const Icon(
                                          size: 12,
                                          color: Colors.grey,
                                          Icons.keyboard_arrow_right)
                                    ])
                                  ])
                            ]))),
              )
            ])));
  }
}

Text customText(String text) {
  return Text(
    text,
    style: textStyleOnBoarding(14, Colors.black, FontWeight.w700),
  );
}

class CustomProfileContainer extends StatelessWidget {
  const CustomProfileContainer(
      {Key? key,
      required this.icon,
      required this.customWidget,
      required this.text,
      required this.onTap})
      : super(key: key);
  final String icon;
  final Widget? customWidget;
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 167,
          height: 70,
          decoration: BoxDecoration(
              color: const Color(0xfff4f4f4),
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: Sizes.p16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                width: Sizes.p16,
                height: Sizes.p16,
                child: Image.asset(icon),
              ),
              gapH4,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  text,
                  style: textStyleOnBoarding(14, Colors.black, FontWeight.w400),
                ),
                customWidget ??
                    const Icon(
                        size: 12,
                        color: Colors.grey,
                        Icons.keyboard_arrow_right)
              ])
            ]),
          )),
    );
  }
}
