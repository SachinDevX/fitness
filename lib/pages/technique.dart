import 'package:flutter/material.dart';
import '../components/workout_card.dart';
import '../components/section_title.dart';

class TechniquePage extends StatelessWidget {
  const TechniquePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        // Beginner Section
        SectionTitle(title: 'Beginner Techniques'),
        SizedBox(height: 16),
        SizedBox(
          height: 240,
          child: PageView(
            controller: PageController(viewportFraction: 0.9),
            scrollDirection: Axis.horizontal,
            children: [
              WorkoutCard(
                title: "Basic Form",
                duration: "10 min",
                type: "Technique",
                equipment: "No Equipment",
                proTag: "Pro",
                imagePath: "assets/images/technique/tech1.jpeg"
              ),
              WorkoutCard(
                title: "Proper Breathing",
                duration: "8 min",
                type: "Technique",
                equipment: "No Equipment",
                proTag: "Pro",
                imagePath: "assets/images/technique/tech2.jpeg"
              ),
              WorkoutCard(
                title: "Core Stability",
                duration: "12 min",
                type: "Technique",
                equipment: "No Equipment",
                proTag: "Pro",
                imagePath: "assets/images/technique/tech3.jpeg"
              ),
            ],
          ),
        ),
        SizedBox(height: 32),

        // Intermediate Section
        SectionTitle(title: 'Intermediate Techniques'),
        SizedBox(height: 16),
        SizedBox(
          height: 240,
          child: PageView(
            controller: PageController(viewportFraction: 0.9),
            scrollDirection: Axis.horizontal,
            children: [
              WorkoutCard(
                title: "Advanced Form",
                duration: "15 min",
                type: "Technique",
                equipment: "Basic Equipment",
                proTag: "Pro",
                imagePath: "assets/images/technique/tech4.jpeg"
              ),
              WorkoutCard(
                title: "Movement Patterns",
                duration: "12 min",
                type: "Technique",
                equipment: "No Equipment",
                proTag: "Pro",
                imagePath: "assets/images/technique/tech5.jpeg"
              ),
              WorkoutCard(
                title: "Balance Training",
                duration: "10 min",
                type: "Technique",
                equipment: "No Equipment",
                proTag: "Pro",
                imagePath: "assets/images/technique/tech6.jpeg"
              ),
            ],
          ),
        ),
        SizedBox(height: 32),

        // Advanced Section
        SectionTitle(title: 'Advanced Techniques'),
        SizedBox(height: 16),
        SizedBox(
          height: 240,
          child: PageView(
            controller: PageController(viewportFraction: 0.9),
            scrollDirection: Axis.horizontal,
            children: [
              WorkoutCard(
                title: "Complex Movements",
                duration: "20 min",
                type: "Technique",
                equipment: "Full Equipment",
                proTag: "Pro",
                imagePath: "assets/images/technique/tech7.jpeg"
              ),
              WorkoutCard(
                title: "Power Training",
                duration: "18 min",
                type: "Technique",
                equipment: "Basic Equipment",
                proTag: "Pro",
                imagePath: "assets/images/technique/tech8.jpeg"
              ),
              WorkoutCard(
                title: "Advanced Balance",
                duration: "15 min",
                type: "Technique",
                equipment: "No Equipment",
                proTag: "Pro",
                imagePath: "assets/images/technique/tech9.jpeg"
              ),
            ],
          ),
        ),
      ],
    );
  }
}
