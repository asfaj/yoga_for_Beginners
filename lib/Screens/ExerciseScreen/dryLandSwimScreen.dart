import 'package:flutter/material.dart';
import 'package:yoga_app/Screens/ExerciseScreen/cobraStretchScreen.dart';

import 'package:yoga_app/templates/ExerciseOptionScreen.dart';
import 'package:yoga_app/templates/ExerciseTemplate.dart';

class DryLandSwimScreen extends StatelessWidget {
  const DryLandSwimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ExerciseScreen(
      exerciseName: 'Dry Land Swim',
      duration: 60,
      nextScreen: const CobraStretchScreen(),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/videos/dry.gif',
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
                    exerciseName: 'Dry Land Swim',
                    replayScreen: DryLandSwimScreen(),
                    nextExerciseScreen: CobraStretchScreen(),
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
