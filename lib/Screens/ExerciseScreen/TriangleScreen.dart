import 'package:flutter/material.dart';
import 'package:yoga_app/Screens/ExerciseScreen/StandingStretchScreen.dart';
import 'package:yoga_app/templates/ExerciseOptionScreen.dart';
import 'package:yoga_app/templates/ExerciseTemplate.dart';

class TriangleScreen extends StatelessWidget {
  const TriangleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExerciseScreen(
      exerciseName: 'Triangle',
      duration: 60,
      nextScreen: const StandingVerticalStretchScreen(),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/videos/triangle.gif',
              height: 200.0,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[300],
              foregroundColor: Colors.white,
              fixedSize: Size(200, 55),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExerciseOptionsScreen(
                    exerciseName: 'Triangle',
                    replayScreen: TriangleScreen(),
                    nextExerciseScreen: StandingVerticalStretchScreen(),
                  ),
                ),
              );
            },
            child: const Text(
              'End Exercise',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
