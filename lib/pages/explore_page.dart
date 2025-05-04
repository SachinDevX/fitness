//explore page
import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class WorkoutCard extends StatelessWidget {
  final String title;
  final String duration;
  final String type;
  final String equipment;
  final String proTag;
  final bool isYouTube;
  final String imagePath;

  const WorkoutCard({
    super.key,
    required this.title,
    required this.duration,
    required this.type,
    required this.equipment,
    required this.proTag,
    this.isYouTube = false,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      height: 220,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.6),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      isYouTube ? 'YOUTUBE WORKOUTS' : 'FOLLOW ALONG WORKOUT',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      proTag,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.timer, color: Colors.white, size: 16),
                            SizedBox(width: 4),
                            Text(
                              duration,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          type,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  // ✅ Updated "Complete" Button
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Complete $duration $type Workout',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                      ],
                    ),
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

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            'View All',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final followAlongWorkouts = [
      WorkoutCard(
        title: 'FOLLOW ALONG WORKOUT',
        duration: '15 MIN',
        type: 'FULL BODY',
        equipment: 'USING CHAIRS ONLY',
        proTag: 'PRO',
        imagePath: 'assets/images/follow_along_workout/full_bodyWorkout.jpg',
      ),
      WorkoutCard(
        title: 'FOLLOW ALONG WORKOUT',
        duration: '20 MIN',
        type: 'UPPER BODY',
        equipment: 'NO EQUIPMENT',
        proTag: 'PRO',
        imagePath: 'assets/images/follow_along_workout/upperBody.jpg',
      ),
      WorkoutCard(
        title: 'FOLLOW ALONG WORKOUT',
        duration: '30 MIN',
        type: 'CORE & ABS',
        equipment: 'BODYWEIGHT',
        proTag: 'PRO',
        imagePath: 'assets/images/follow_along_workout/coreWorkout.jpg',
      ),
    ];

    final youtubeWorkouts = [
      WorkoutCard(
        title: 'YOUTUBE WORKOUTS',
        duration: '15 MIN',
        type: 'FULL BODY',
        equipment: 'USING CHAIRS ONLY',
        proTag: 'FREE',
        isYouTube: true,
        imagePath: 'assets/images/youtube_workout/FullWorkout.jpg',
      ),
      WorkoutCard(
        title: 'YOUTUBE WORKOUTS',
        duration: '20 MIN',
        type: 'UPPER BODY',
        equipment: 'NO EQUIPMENT',
        proTag: 'FREE',
        isYouTube: true,
        imagePath: 'assets/images/youtube_workout/UPperbody.jpg',
      ),
      WorkoutCard(
        title: 'YOUTUBE WORKOUTS',
        duration: '10 MIN',
        type: 'ABS',
        equipment: 'BODYWEIGHT',
        proTag: 'FREE',
        isYouTube: true,
        imagePath: 'assets/images/youtube_workout/abs.jpg',
      ),
    ];

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
                children: followAlongWorkouts,
              ),
            ),
            SizedBox(height: 16),
            SectionTitle(title: 'YouTube Workouts'),
            SizedBox(
              height: 240,
              child: PageView(
                controller: PageController(viewportFraction: 0.9),
                scrollDirection: Axis.horizontal,
                children: youtubeWorkouts,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
