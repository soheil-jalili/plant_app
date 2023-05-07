import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/Details/components/buy_and_description_btn.dart';
import 'package:plant_app/screens/Details/components/image_and_icon_card.dart';
import 'package:plant_app/screens/Details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageAndIconCard(size: size),
            const TitleAndPrice(
              title: 'Angelica',
              country: 'Russia',
              price: 440,
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: BuyAndDescriptionBtn(
                    title: 'Buy Now',
                    backGroundColor: kPrimaryColor,
                    forGroundColor: Colors.white,
                    press: () {},
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Description',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding * 2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
