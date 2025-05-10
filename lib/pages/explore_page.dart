import 'package:flutter/material.dart';
import 'package:fitness/components/section_title.dart';
import 'package:fitness/data/workout_data.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'programs_tab.dart';
import 'technique.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
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
              labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  icon: Icon(Icons.fitness_center),
                  text: "Workouts",
                ),
                Tab(
                  icon: Icon(Icons.calendar_today),
                  text: "Programs",
                ),
                Tab(
                  icon: Icon(Icons.sports_gymnastics),
                  text: "Techniques",
                ),
                Tab(
                  icon: Icon(Icons.directions_run),
                  text: "Exercises",
              ),
            ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    children: [
                      const SizedBox(height: 16),
                      SectionTitle(title: 'Follow Along Workouts'),
                      SizedBox(
                        height: 240,
                        child: PageView(
                          controller: PageController(viewportFraction: 0.9),
                          scrollDirection: Axis.horizontal,
                          children: WorkoutData.getFollowAlongWorkouts(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SectionTitle(title: 'YouTube Workouts'),
                      SizedBox(
                        height: 240,
                        child: PageView(
                          controller: PageController(viewportFraction: 0.9),
                          scrollDirection: Axis.horizontal,
                          children: WorkoutData.getYouTubeWorkouts(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SectionTitle(title: 'No Equipment Workouts'),
                      SizedBox(
                        height: 240,
                        child: PageView(
                          controller: PageController(viewportFraction: 0.9),
                          scrollDirection: Axis.horizontal,
                          children: WorkoutData.getNoEquipmentWorkouts(),
                        ),
                      ),
                    ],
                  ),
                  ProgramsTab(),
                  TechniquePage(),
                  Center(child: Text('Exercises')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProgramCard extends StatelessWidget {
  final String title;
  final String description;
  final String duration;
  final String level;
  final String imageUrl;

  const ProgramCard({
    Key? key,
    required this.title,
    required this.description,
    required this.duration,
    required this.level,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                color: Colors.grey[300],
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                  onError: (exception, stackTrace) {
                    // Handle image loading error
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8),
                  Row(
            children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          duration,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          level,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
            ],
          ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
