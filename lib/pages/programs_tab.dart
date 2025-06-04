import 'package:fitness/components/workout_card.dart';
import 'package:flutter/material.dart';
import '../components/program_card.dart';
import '../components/section_title.dart';

class ProgramsTab extends StatelessWidget {
  const ProgramsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        SectionTitle(title: 'Training Programs'),
        SizedBox(height: 16),
        SizedBox(
          height: 240,
          child: PageView(
            controller: PageController(viewportFraction: 0.9),
            scrollDirection: Axis.horizontal,
            children: [
              WorkoutCard(
                title: "Beginner",
                duration: "7 weeks",
                type: "Full Body",
                equipment: "No Equipment",
                proTag: "Pro",
                imagePath: "assets/images/program/beg.jpeg"
              ),
              WorkoutCard(
                title: "Intermediate",
                duration: "12 weeks",
                type: "Full Body",
                equipment: "No Equipment",
                proTag: "Pro",
                imagePath: "assets/images/program/int.jpeg"
              ),
              WorkoutCard(
                title: "Advanced",
                duration: "14 weeks",
                type: "Full Body",
                equipment: "Chair",
                proTag: "Pro",
                imagePath: "assets/images/program/adv.jpeg"
              ),
            ],
          ),
        ),
        SizedBox(height: 32),
        SectionTitle(title: 'Featured Programs'),
        SizedBox(height: 16),
        SizedBox(
          height: 240,
          child: PageView(
            controller: PageController(viewportFraction: 0.9),
            scrollDirection: Axis.horizontal,
            children: [
              WorkoutCard(
                title: "Beginner",
                duration: "7 weeks",
                type: "Full Body",
                equipment: "No Equipment",
                proTag: "Pro",
                imagePath: "assets/images/program/prog1.jpeg"
              ),
              WorkoutCard(
                title: "Intermediate",
                duration: "12 weeks",
                type: "Full Body",
                equipment: "No Equipment",
                proTag: "Pro",
                imagePath: "assets/images/program/prog2.jpeg"
              ),
              WorkoutCard(
                title: "Advanced",
                duration: "14 weeks",
                type: "Full Body",
                equipment: "Chair",
                proTag: "Pro",
                imagePath: "assets/images/program/prog3.jpeg"
              ),
            ],
          ),
        ),
      ],
    );
  }
}