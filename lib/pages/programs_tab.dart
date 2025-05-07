import 'package:flutter/material.dart';
import '../components/program_card.dart';

class ProgramsTab extends StatelessWidget {
  const ProgramsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        ProgramCard(
          title: "Beginner",
          description: "Perfect for those just starting their fitness journey",
          duration: "8 weeks",
          level: "Beginner",
          imagePath: "",
        ),
        SizedBox(height: 16),
        ProgramCard(
          title: "Intermediate",
          description: "Take your strength to the next level",
          duration: "12 weeks",
          level: "Intermediate",
          imagePath: "",
        ),
        SizedBox(height: 16),
        ProgramCard(
          title: "Advanced",
          description: "Comprehensive program for sustainable weight loss",
          duration: "10 weeks",
          level: "Advanced",
          imagePath: "",
        ),
      ],
    );
  }
} 