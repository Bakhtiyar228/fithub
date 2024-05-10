import 'package:flutter/material.dart';
import 'package:fithub/widgets/bottom_navbar.dart';
import 'package:fithub/widgets/search_bar.dart';
import 'package:fithub/widgets/nutrition_sections.dart';
import 'package:fithub/widgets/top_navbar.dart';

class NutritionScreen extends StatelessWidget {
  const NutritionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(top: kToolbarHeight + 40, bottom: 85),
              children: const [
                MySearchBar(),
                SectionCategory(),
                SectionRecomendation(),
                SectionPopular(),
              ],
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: TopNavBar(isHomePage: false),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
