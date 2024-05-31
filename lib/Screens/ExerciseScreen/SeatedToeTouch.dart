import 'package:flutter/material.dart';
import 'package:yoga_app/Screens/ExerciseScreen/pillatesRollOverScreen.dart';
import 'package:yoga_app/templates/ExerciseOptionScreen.dart';
import 'package:yoga_app/templates/ExerciseTemplate.dart';

class SeatedToeTouchScreen extends StatelessWidget {
  const SeatedToeTouchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ExerciseScreen(
      exerciseName: 'Seated Toe Touch',
      duration: 60,
      nextScreen: const PilatesRollOverScreen(),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/videos/toetouch.gif',
              height: 200.0,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[300],
              foregroundColor: Colors.white,
              fixedSize: const Size(200, 55),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExerciseOptionsScreen(
                    exerciseName: 'Seated Toe Touch',
                    replayScreen: SeatedToeTouchScreen(),
                    nextExerciseScreen: PilatesRollOverScreen(),
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
