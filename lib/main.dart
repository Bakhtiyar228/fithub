import 'package:fithub/screens/community/community.dart';
import 'package:fithub/screens/home/home.dart';
import 'package:fithub/screens/nutrition/nutrition.dart';
import 'package:flutter/material.dart';
import 'package:fithub/screens/workout/workout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/workout': (context) => WorkoutScreen(),
        '/nutrition': (context) => NutritionScreen(),
        '/community': (context) => CommunityScreen(),
      },
    );
  }
}


