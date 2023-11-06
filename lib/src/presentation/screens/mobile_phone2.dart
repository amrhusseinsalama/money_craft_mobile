import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/text_style.dart';
import 'package:money_craft_mobile/src/presentation/screens/create_account.dart';
import 'package:money_craft_mobile/src/presentation/screens/mobile_phone.dart';
import 'package:money_craft_mobile/src/presentation/constants/sizes.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class MobilePhone2 extends StatefulWidget {
  const MobilePhone2({Key? key}) : super(key: key);

  @override
  State<MobilePhone2> createState() => _MobilePhone2State();
}

class _MobilePhone2State extends State<MobilePhone2> {
  @override
  Widget build(BuildContext context) {
    return CustomMobilePhoneScreen(
        text1: "Enter 6 digits Code",
        text2:
            "Wen sent a code to the following phone number, Please enter your code",
        formWidget: [
          gapH25,
          Container(
              height: Sizes.p40,
              decoration: BoxDecoration(
                  color: const Color(0xffF8F4F0),
                  borderRadius: BorderRadius.circular(Sizes.p12)),
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: Sizes.p12, horizontal: Sizes.p20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset("assets/icons/phone.png"),
                              const Text("+49 0176 3038 6676")
                            ]),
                        InkWell(
                            child: Text("CHANGE",
                                style: textStyleOnBoarding(
                                    14, Colors.black, FontWeight.w700)))
                      ]))),
          gapH40,
          PinCodeTextField(
            enableActiveFill: true,
            cursorColor: Colors.black,
            keyboardType: TextInputType.number,
            length: 6,
            appContext: context,
            pinTheme: PinTheme(
              inactiveFillColor: const Color(0x0fffafaf),
              activeFillColor: const Color(0x0fffafaf),
              activeColor: const Color(0xffEAEAEA),
              inactiveColor: const Color(0xffEAEAEA),
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(Sizes.p8),
              fieldHeight: Sizes.p50,
              fieldWidth: Sizes.p50,
            ),
          ),
          gapH130,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Resend Code",
                style: textStyleOnBoarding(12, Colors.black, FontWeight.w400),
              ),
              Text("(1m)",
                  style: textStyleOnBoarding(12, Colors.black, FontWeight.w700))
            ],
          ),
          gapH100,
          CustomButton(
              text: "Verify",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateAccount()));
              })
        ]);
  }
}
