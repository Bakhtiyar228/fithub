import 'package:flutter/material.dart';
import 'package:fithub/widgets/home_activities.dart';
import 'package:fithub/widgets/top_navbar.dart';
import 'package:fithub/widgets/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[10],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TopNavBar(isHomePage: true),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionTitle('Training Plan'),
                    _buildActivityRow(),
                    const SizedBox(height: 20),
                    _buildSectionTitle('Daily Schedule'),
                    _buildTrainingSessions(),
                    const SizedBox(height: 120),
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

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }

  Widget _buildActivityRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Activitie(
            Nameimage: 'runner.png',
            ActivitieName: 'Running',
            ContainerColor: Color.fromARGB(255, 215, 250, 255),
          ),
          Activitie(
            Nameimage: 'sit-up.png',
            ActivitieName: 'Crossfit',
            ContainerColor: Color.fromARGB(255, 255, 200, 200),
          ),
          Activitie(
            Nameimage: 'trainer.png',
            ActivitieName: 'Power Loads',
            ContainerColor: Color.fromARGB(255, 215, 250, 255),
          ),
          Activitie(
            Nameimage: 'cyclist.png',
            ActivitieName: 'Cycling',
            ContainerColor: Color.fromARGB(255, 255, 200, 200),
          ),
        ],
      ),
    );
  }

  Widget _buildTrainingSessions() {
    return Column(
      children: const [
        TrainingSession(
          StartTime: '08:00',
          EndTime: '09:00',
          SessionName: 'Running',
          imageName: 'runner.png',
          StackColor: Color.fromARGB(255, 215, 250, 255),
        ),
        TrainingSession(
          StartTime: '12:00',
          EndTime: '14:00',
          SessionName: 'Crossfit',
          imageName: 'sit-up.png',
          StackColor: Color.fromARGB(255, 255, 200, 200),
        ),
        TrainingSession(
          StartTime: '15:00',
          EndTime: '18:00',
          SessionName: 'Power Loads',
          imageName: 'trainer.png',
          StackColor: Color.fromARGB(255, 215, 250, 255),
        ),
        TrainingSession(
          StartTime: '20:00',
          EndTime: '20:30',
          SessionName: 'Cycling',
          imageName: 'cyclist.png',
          StackColor: Color.fromARGB(255, 255, 200, 200),
        ),
      ],
    );
  }
}