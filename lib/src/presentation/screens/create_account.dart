import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/sizes.dart';
import 'package:money_craft_mobile/src/presentation/constants/text_style.dart';
import 'package:money_craft_mobile/src/presentation/screens/confirmation.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_button.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            top: Sizes.p50, right: Sizes.p20, left: Sizes.p20),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Create Account",
                    style: textStyleOnBoarding(
                        20, const Color(0xff25272C), FontWeight.w700)),
                IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(color: Color(0xff25272C), Icons.info_outline))
              ],
            ),
            gapH25,
            createAccountText("Your first name as shown on your ID", 12),
            const CustomTextField(hintText: "First Name"),
            createAccountText("Your Last name as shown on your ID", 12),
            const CustomTextField(hintText: "Last Name"),
            createAccountText("Your email address", 12),
            const CustomTextField(hintText: "Email"),
            Padding(
              padding: const EdgeInsets.only(bottom: Sizes.p40, top: Sizes.p12),
              child: Row(
                children: [
                  Image.asset("assets/images/line.png"),
                  gapW12,
                  createAccountText("or link your social media account", 14),
                  gapW12,
                  Image.asset("assets/images/line.png"),
                ],
              ),
            ),
            gapH25,
            Center(
              child: SizedBox(
                height: Sizes.p25,
                width: Sizes.p130,
                child: Row(
                  children: [
                    Image.asset("assets/images/apple.png"),
                    gapW30,
                    Image.asset("assets/images/Google.png"),
                    gapW30,
                    Image.asset("assets/images/facebook.png"),
                  ],
                ),
              ),
            ),
            gapH60,
            CustomButton(
              text: "Create your account",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const Confirmation();
                  },
                ));
              },
            )
          ]),
        ),
      ),
    );
  }
}

Text createAccountText(String text, double size) {
  return Text(
    text,
    style: textStyleOnBoarding(size, Colors.black, FontWeight.w700),
  );
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintText}) : super(key: key);
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: Sizes.p12, bottom: Sizes.p20),
        child: TextFormField(
            decoration: InputDecoration(
                hintStyle:
                    textStyleOnBoarding(14, Colors.black38, FontWeight.w400),
                hintText: hintText,
                enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1.5, color: Color(0xffEAEAEA))),
                filled: true,
                fillColor: const Color(0xffFAFAFA),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Sizes.p8)))));
  }
}
