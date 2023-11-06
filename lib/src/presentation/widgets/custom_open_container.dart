import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/constants/sizes.dart';

class CustomOpenContainer extends StatelessWidget {
  const CustomOpenContainer(
      {Key? key, required this.images})
      : super(key: key);
  final List <Widget> images;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Sizes.p20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.p12)),
        child: Stack(children: images
          ),
      ),
    );
  }
}
