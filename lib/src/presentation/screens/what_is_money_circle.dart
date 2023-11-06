import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/sizes.dart';
import 'package:money_craft_mobile/src/presentation/constants/text_style.dart';
import 'package:money_craft_mobile/src/presentation/screens/menu.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_button.dart';

class MoneyCircle extends StatelessWidget {
  const MoneyCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
            child: Center(
                child: Column(children: [
              Text("Getting Started",
                  style: textStyleOnBoarding(10, Colors.black, FontWeight.w700)),
              gapH8,
              Text("What is a money circle ?",
                  style: textStyleOnBoarding(
                      20, const Color(0xff2B4FF2), FontWeight.w700)),
              gapH20,
              const CustomRow(
                  image: "find_circle",
                  text: "Find a circle",
                  text2: "Choose how much you\nwant to save."),
              Padding(
                  padding: const EdgeInsets.only(right: Sizes.p150),
                  child: customImageArrow("assets/images/corner_left_down.png")),
              const CustomRow(
                  image: "sign_the_contract",
                  text: "Sign the contract",
                  text2: "Trusted & hassle free\none time contract."),
              Padding(
                padding: const EdgeInsets.only(left: Sizes.p250),
                child: customImageArrow("assets/images/corner_right_down.png"),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("Pay on time",
                      style:
                          textStyleOnBoarding(16, Colors.black, FontWeight.w700)),
                  Text("Pay instalments on time\neach month.",
                      style:
                          textStyleOnBoarding(14, Colors.black, FontWeight.w400))
                ]),
                gapW8,
                SizedBox(
                    width: Sizes.p80,
                    height: Sizes.p80,
                    child: Image.asset("assets/images/pay_on_time.png"))
              ]),
              Padding(
                  padding: const EdgeInsets.only(right: Sizes.p100),
                  child: customImageArrow("assets/images/corner_left_down.png")),
              const CustomRow(
                  image: "receive_your_payout",
                  text: "Receive your payout",
                  text2: "Receive your cash in your\nselected\nMethod."),
              CustomButton(
                  text: "Mark as completed ( Claim offer )", onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const Menu();
                    },));
              })
            ])),
          ),
        ));
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow(
      {Key? key, required this.image, required this.text, required this.text2})
      : super(key: key);
  final String image;
  final String text;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
          width: Sizes.p80,
          height: Sizes.p80,
          child: Image.asset("assets/images/$image.png")),
      gapW8,
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(text,
            style: textStyleOnBoarding(16, Colors.black, FontWeight.w700)),
        Text(text2,
            style: textStyleOnBoarding(14, Colors.black, FontWeight.w400))
      ])
    ]);
  }
}

SizedBox customImageArrow(String text) {
  return SizedBox(
      height: Sizes.p80, width: Sizes.p80, child: Image.asset(text));
}
