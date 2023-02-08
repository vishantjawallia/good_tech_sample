import 'package:flutter/material.dart';
import 'package:good_tech_sample/config/Paletes.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';

class SwipeButtom extends StatelessWidget {
  final String? name;
  final EdgeInsets? padding;
  final EdgeInsets? swipePadding;
  final EdgeInsets? margin;
  final void Function()? onSwipeCallback;

  const SwipeButtom({
    required this.name,
    required this.onSwipeCallback,
    super.key,
    this.padding,
    this.margin,
    this.swipePadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      padding: padding ?? EdgeInsets.zero,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Paletes.green,
        borderRadius: BorderRadius.circular(60),
      ),
      child: SwipingButton(
        text: "Accept Order",
        swipeButtonColor: Paletes.white,
        iconColor: Paletes.black,
        padding: swipePadding ?? const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        swipePercentageNeeded: 0.8,
        onSwipeCallback: onSwipeCallback!,
        height: 40,
        buttonTextStyle: const TextStyle(fontWeight: FontWeight.w400),
        backgroundColor: Paletes.green,

        // width: 80,
      ),
    );
  }
}
