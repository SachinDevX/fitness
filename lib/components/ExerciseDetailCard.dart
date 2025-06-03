import 'package:flutter/material.dart';
import 'dart:async';

class ExerciseDetailCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String timerText;
  final String timeInfo;
  final String equipInfo;
  final VoidCallback? onBack;
  final VoidCallback? onPausePlay;
  final bool isPaused;

  const ExerciseDetailCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.timerText,
    required this.timeInfo,
    required this.equipInfo,
    this.onBack,
    this.onPausePlay,
    this.isPaused = false,
  }) : super(key: key);

  @override
  State<ExerciseDetailCard> createState() => _ExerciseDetailCardState();
}

class _ExerciseDetailCardState extends State<ExerciseDetailCard> {
  bool isPaused = false;
  int currentExerciseIndex = 0;
  Timer? timer;
  int remainingSeconds = 30; // Default duration for first exercise
  bool isWorkoutComplete = false;

  List<Map<String, dynamic>> exercises = [
    {'name': 'Jumping Jacks', 'duration': 30},
    {'name': 'Push-ups', 'duration': 45},
    {'name': 'Squats', 'duration': 30},
    {'name': 'Mountain Climbers', 'duration': 45},
    {'name': 'Plank', 'duration': 30},
  ];

  @override
  void initState() {
    super.initState();
    remainingSeconds = exercises[0]['duration'];
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    timer?.cancel();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (remainingSeconds > 0) {
          remainingSeconds--;
        } else {
          // Move to next exercise or complete workout
          if (currentExerciseIndex < exercises.length - 1) {
            currentExerciseIndex++;
            remainingSeconds = exercises[currentExerciseIndex]['duration'];
          } else {
            // Workout complete
            timer.cancel();
            isWorkoutComplete = true;
            isPaused = true;
          }
        }
      });
    });
  }

  void pauseTimer() {
    timer?.cancel();
  }

  void resetTimer() {
    timer?.cancel();
    setState(() {
      currentExerciseIndex = 0;
      remainingSeconds = exercises[0]['duration'];
      isPaused = false;
      isWorkoutComplete = false;
    });
    startTimer();
  }

  void stopTimer() {
    timer?.cancel();
    setState(() {
      currentExerciseIndex = 0;
      remainingSeconds = exercises[0]['duration'];
      isPaused = true;
      isWorkoutComplete = false;
    });
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Positioned.fill(
          child: Image.asset(
            widget.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        // Dark overlay
        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        // Content
        SafeArea(
          child: Column(
            children: [
              // Top bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  children: [
                    // Back button
                    GestureDetector(
                      onTap: widget.onBack ?? () => Navigator.of(context).pop(),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    // Title
                    Text(
                      widget.title.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Spacer(flex: 2),
                  ],
                ),
              ),
              Spacer(),
              // Current Exercise
              Text(
                isWorkoutComplete ? 'WORKOUT COMPLETE!' : exercises[currentExerciseIndex]['name'],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: 8),
              Text(
                isWorkoutComplete ? '🎉' : formatTime(remainingSeconds),
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Spacer(),
              // Timer Controls
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Restart button
                    GestureDetector(
                      onTap: resetTimer,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.refresh,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                    // Play/Pause button
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isPaused = !isPaused;
                          if (isPaused) {
                            pauseTimer();
                          } else {
                            startTimer();
                          }
                        });
                      },
                      child: Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                          color: Colors.yellowAccent,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          isPaused ? Icons.play_arrow : Icons.pause,
                          color: Colors.black,
                          size: 36,
                        ),
                      ),
                    ),
                    // Stop button
                    GestureDetector(
                      onTap: stopTimer,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.stop,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              // Exercise List
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: exercises.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 160,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: currentExerciseIndex == index 
                            ? Colors.yellowAccent.withOpacity(0.2)
                            : Colors.white24,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            exercises[index]['name'],
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '${exercises[index]['duration']}s',
                            style: TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
