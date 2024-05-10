import 'package:flutter/material.dart';
import 'package:fithub/widgets/top_navbar.dart';
import 'package:fithub/widgets/bottom_navbar.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({Key? key}) : super(key: key);

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
              "Community",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 120),
                    Center(
                      child: Text(
                        'Soon...',
                        style: TextStyle(fontSize: 35),
                      ),
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
}
