import 'package:fitness/data/exercise_data.dart';
import 'package:flutter/material.dart';
class Program_Tab extends StatelessWidget {
  const Program_Tab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: const [
        ExerciseCard(
            imageAssets: "assets/images/exercise/exercise1.jpeg",
            title: '90 Degree Hold',
            muscleGroupIcon: Icon(Icons.accessibility_new, color: Colors.white),
        ),
        ExerciseCard(
          imageAssets: "assets/images/exercise/exercise2.jpeg",
          title: 'Front Lever',
          muscleGroupIcon: Icon(Icons.accessibility_new, color: Colors.white),
        ),
        ExerciseCard(
          imageAssets: "assets/images/exercise/exercise3.jpeg",
          title: '90 Degree Hold - Parallettes',
          muscleGroupIcon: Icon(Icons.accessibility_new, color: Colors.white),
        ),
        ExerciseCard(
          imageAssets: "assets/images/exercise/exercise4.jpeg",
          title: '90 Degree Hold + Push Ups - Weight Vest',
          muscleGroupIcon: Icon(Icons.accessibility_new, color: Colors.white),
        ),
        ExerciseCard(
          imageAssets: "assets/images/exercise/exercise5.jpeg",
            title: 'Back Lever',
          muscleGroupIcon: Icon(Icons.accessibility_new, color: Colors.white),
        ),

      ],
    );
  }
}
