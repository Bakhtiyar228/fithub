import 'package:flutter/material.dart';
import 'package:fithub/screens/workout/meditation.dart';
import 'package:fithub/screens/workout/yoga.dart';
import 'package:fithub/widgets/workout_categories.dart';
import 'package:fithub/widgets/top_navbar.dart';
import 'package:fithub/widgets/bottom_navbar.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[10],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TopNavBar(isHomePage: false),
            SizedBox(height: 50),
            Text(
              "WORKOUT",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CategoryCard(
                            svgSrc: "assets/icons/Hamburger.svg",
                            title: "Power Loads",
                            press: () {},
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: CategoryCard(
                            svgSrc: "assets/icons/Exercises.svg",
                            title: "Exercises",
                            press: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: CategoryCard(
                            svgSrc: "assets/icons/Meditation.svg",
                            title: "Meditation",
                            press: () => _navigateToScreen(context, Meditation()),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: CategoryCard(
                            svgSrc: "assets/icons/yoga.svg",
                            title: "Yoga",
                            press: () => _navigateToScreen(context, Yoga()),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            BottomNavBar(),
          ],
        ),
      ),
    );
  }

  void _navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}
