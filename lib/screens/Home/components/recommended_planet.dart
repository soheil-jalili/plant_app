import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/Details/details_screen.dart';

class RecommendedPlanetCard extends StatelessWidget {
  const RecommendedPlanetCard({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  });

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: size.width * 0.4,
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.labelLarge),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendsPlanet extends StatelessWidget {
  const RecommendsPlanet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          RecommendedPlanetCard(
            image: 'assets/images/image_1.png',
            country: 'Russia',
            price: 440,
            title: 'SamanTha',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen()));
            },
          ),
          RecommendedPlanetCard(
            image: 'assets/images/image_2.png',
            country: 'Russia',
            price: 440,
            title: 'Angelica',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen()));
            },
          ),
          RecommendedPlanetCard(
            image: 'assets/images/image_3.png',
            country: 'Russia',
            price: 440,
            title: 'SamanTha',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen()));
            },
          ),
        ],
      ),
    );
  }
}
