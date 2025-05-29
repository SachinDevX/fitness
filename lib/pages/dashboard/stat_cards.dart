import 'package:flutter/material.dart';
class StatCard extends StatelessWidget {
  final String title;
  const StatCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            spreadRadius: 2,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFFB3B1A9),
              fontWeight: FontWeight.w900,
              fontSize: 16,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            '-',
            style: TextStyle(
              color: Color(0xFFB3B1A9),
              fontWeight: FontWeight.bold,
              fontSize:16,
            ),
          ),
        ],
      ),
    );
  }
}
