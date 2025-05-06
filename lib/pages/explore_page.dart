//explore page
import 'package:flutter/material.dart';
import 'package:fitness/components/workout_card.dart';
import 'package:fitness/components/section_title.dart';
import 'package:fitness/data/workout_data.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: IconButton(
              icon: Icon(Icons.search, color: Colors.black, size: 24),
              onPressed: () {},
            ),
          ),
          title: Text(
            'Explore',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: IconButton(
                icon: Icon(Icons.notifications_none, color: Colors.black, size: 24),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Workouts',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    ...['Programs', 'Techniques', 'Exercises', 'Coaching'].map(
                          (text) => Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          text,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            SectionTitle(title: 'Follow Along Workouts'),
            SizedBox(
              height: 240,
              child: PageView(
                controller: PageController(viewportFraction: 0.9),
                scrollDirection: Axis.horizontal,
                children: WorkoutData.getFollowAlongWorkouts(),
              ),
            ),
            SizedBox(height: 16),
            SectionTitle(title: 'YouTube Workouts'),
            SizedBox(
              height: 240,
              child: PageView(
                controller: PageController(viewportFraction: 0.9),
                scrollDirection: Axis.horizontal,
                children: WorkoutData.getYouTubeWorkouts(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
