import 'package:flutter/material.dart';
class ExerciseCard extends StatelessWidget {
  final String imageAssets;
  final String title;
  final Widget muscleGroupIcon;
  const ExerciseCard({
    required this.imageAssets,
    required this.title,
    required this.muscleGroupIcon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        children: [
          //image with heart(like button)
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imageAssets,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),

              ),
              Positioned(
                bottom: 6,
                  right: 6,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
              ),
            ],
          ),
          SizedBox(width: 16),
          //title
          Expanded(
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(width: 16),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: muscleGroupIcon),
          ),
        ],
      ),
    );
  }
}
