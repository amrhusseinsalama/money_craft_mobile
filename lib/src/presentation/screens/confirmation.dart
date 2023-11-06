import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/sizes.dart';
import 'package:money_craft_mobile/src/presentation/screens/what_is_money_circle.dart';
import 'package:money_craft_mobile/src/presentation/widgets/custom_button.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(
                top: Sizes.p150, right: Sizes.p20, left: Sizes.p20),
            child: SingleChildScrollView(
                child: Column(children: [
              SizedBox(
                  width: Sizes.p100,
                  height: Sizes.p100,
                  child: Image.asset("assets/images/check.png")),
              gapH25,
              Image.asset("assets/images/Frame4.png"),
              gapH150,
              CustomButton(
                  text: "Let’s go",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const MoneyCircle();
                    }));
                  })
            ]))));
  }
}
