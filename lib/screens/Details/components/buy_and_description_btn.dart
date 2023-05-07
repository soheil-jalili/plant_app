import 'package:flutter/material.dart';

class BuyAndDescriptionBtn extends StatelessWidget {
  const BuyAndDescriptionBtn(
      {super.key,
      required this.title,
      required this.forGroundColor,
      required this.backGroundColor,
      required this.press});

  final String title;
  final Color forGroundColor;
  final Color backGroundColor;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(backGroundColor),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
            ),
          ),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: forGroundColor,
          fontSize: 16,
        ),
      ),
    );
  }
}
