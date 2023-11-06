import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/sizes.dart';
import 'package:money_craft_mobile/src/presentation/constants/text_style.dart';

class CustomButton extends StatelessWidget {
   const CustomButton({Key? key, required this.text,this.onPressed}) : super(key: key);
final String text;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Sizes.p70),
      child: Center(
        child: SizedBox(
          height: Sizes.p40,
          width: double.infinity,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Sizes.p12)),
                  backgroundColor: const Color(0xff2B4FF2)),
              onPressed: onPressed,
              child: Text(
                text,
                style: textStyleOnBoarding(
                    14, const Color(0XFFF0F2F8), FontWeight.w700),
              )),
        ),
      ),
    );
  }
}
