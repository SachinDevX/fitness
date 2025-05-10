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
            imageAssets: "assets/images/exercises/90_degree_hold.jpg",
            title: '90 Degree Hold',
            muscleGroupIcon: Icon(Icons.accessibility_new, color: Colors.white),
        ),
        ExerciseCard(
          imageAssets: "assets/images/exercises/front_lever.jpg",
          title: 'Front Lever',
          muscleGroupIcon: Icon(Icons.accessibility_new, color: Colors.white),
        ),
        ExerciseCard(
          imageAssets: "assets/images/exercises/90_degree_parallettes.jpg",
          title: '90 Degree Hold - Parallettes',
          muscleGroupIcon: Icon(Icons.accessibility_new, color: Colors.white),
        ),
        ExerciseCard(
          imageAssets: "assets/images/exercises/90_degree_weight_vest.jpg",
          title: '90 Degree Hold + Push Ups - Weight Vest',
          muscleGroupIcon: Icon(Icons.accessibility_new, color: Colors.white),
        ),
        ExerciseCard(
          imageAssets: "assets/images/exercises/back_lever.jpg",
          title: 'Back Lever',
          muscleGroupIcon: Icon(Icons.accessibility_new, color: Colors.white),
        ),

      ],
    );
  }
}
