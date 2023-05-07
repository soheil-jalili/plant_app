import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    super.key,
    required this.title,
    required this.press,
  });

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleViewWithCustomUnderLine(text: title),
          const Spacer(),
          TextButton(
            style: ButtonStyle(
              padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              ),
              backgroundColor: const MaterialStatePropertyAll(kPrimaryColor),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              foregroundColor: const MaterialStatePropertyAll(Colors.white),
            ),
            onPressed: press,
            child: const Text('More'),
          ),
        ],
      ),
    );
  }
}

class TitleViewWithCustomUnderLine extends StatelessWidget {
  const TitleViewWithCustomUnderLine({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
