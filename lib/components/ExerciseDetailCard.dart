import 'package:flutter/material.dart';

class ExerciseDetailCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Positioned.fill(
          child: Image.asset(
            imageUrl,
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
                      onTap: onBack ?? () => Navigator.of(context).pop(),
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
                      title.toUpperCase(),
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
              // Timer
              Text(
                timerText,
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 56,
                  letterSpacing: 2,
                ),
              ),
              Spacer(),
              // Info row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Pause/Play button (centered)
                    GestureDetector(
                      onTap: onPausePlay,
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
                  ],
                ),
              ),
              SizedBox(height: 32),
              // Swipe up for instruction
              Column(
                children: [
                  Icon(Icons.keyboard_arrow_up, color: Colors.white70),
                  Text(
                    "SWIPE UP FOR INSTRUCTION",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      letterSpacing: 1.1,
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: 60,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
