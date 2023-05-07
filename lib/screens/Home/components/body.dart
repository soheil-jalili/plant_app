import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/Details/details_screen.dart';
import 'package:plant_app/screens/Home/components/header_with_searchbox.dart';
import 'package:plant_app/screens/Home/components/recommended_planet.dart';

import 'FeaturedPlanetCard.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBar(size: size),
          TitleWithMoreBtn(
            title: 'Recommended',
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => DetailsScreen())));
            },
          ),
          const RecommendsPlanet(),
          TitleWithMoreBtn(
              title: 'Featured Plants',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => DetailsScreen())));
              }),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                FeaturedPlanetCard(
                    image: 'assets/images/bottom_img_1.png',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => DetailsScreen())));
                    }),
                FeaturedPlanetCard(
                    image: 'assets/images/bottom_img_2.png',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => DetailsScreen())));
                    }),
                const SizedBox(
                  height: kDefaultPadding,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
