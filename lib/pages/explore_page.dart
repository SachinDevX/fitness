import 'package:flutter/material.dart';
import 'package:fitness/components/section_title.dart';
import 'package:fitness/data/workout_data.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import '../components/ExerciseDetailCard.dart';
import 'exercise_page.dart';
import 'programs_tab.dart';
import 'technique.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
    final followAlongWorkouts = WorkoutData.getFollowAlongWorkouts();

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Explore',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            ButtonsTabBar(
              backgroundColor: Colors.black,
              unselectedBackgroundColor: Colors.grey[300],
              unselectedLabelStyle: TextStyle(color: Colors.black),
              labelStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              tabs: [
                Tab(icon: Icon(Icons.fitness_center), text: "Workouts"),
                Tab(icon: Icon(Icons.calendar_today), text: "Programs"),
                Tab(icon: Icon(Icons.sports_gymnastics), text: "Techniques"),
                Tab(icon: Icon(Icons.directions_run), text: "Exercises"),
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ListView(
                    children: [
                      const SizedBox(height: 16),
                      SectionTitle(title: 'Follow Along Workouts'),
                      SizedBox(
                        height: 240,
                        child: PageView(
                          controller:
                              PageController(viewportFraction: 0.9),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => ExerciseDetailCard(
                                        imageUrl:
                                            'assets/images/follow_along_workout/full_bodyWorkout.jpg',
                                        title: 'FOLLOW ALONG WORKOUT',
                                        timerText: '15:00',
                                        timeInfo: '15 MIN',
                                        equipInfo: 'CHAIRS',
                                      ),
                                    ),
                                  );
                                },
                                child: followAlongWorkouts[0],
                              ),
                            ),
                            ...followAlongWorkouts.sublist(1),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      SectionTitle(title: 'YouTube Workouts'),
                      SizedBox(
                        height: 240,
                        child: PageView(
                          controller:
                              PageController(viewportFraction: 0.9),
                          scrollDirection: Axis.horizontal,
                          children: WorkoutData.getYouTubeWorkouts(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SectionTitle(title: 'No Equipment Workouts'),
                      SizedBox(
                        height: 240,
                        child: PageView(
                          controller:
                              PageController(viewportFraction: 0.9),
                          scrollDirection: Axis.horizontal,
                          children: WorkoutData.getNoEquipmentWorkouts(),
                        ),
                      ),
                    ],
                  ),
                  ProgramsTab(),
                  TechniquePage(),
                  Program_Tab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
