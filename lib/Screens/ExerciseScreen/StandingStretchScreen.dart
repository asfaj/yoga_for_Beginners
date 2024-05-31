import 'package:flutter/material.dart';
import 'package:yoga_app/Screens/Steps_Screen/CompletionScreen.dart';
import 'package:yoga_app/templates/ExerciseOptionScreen.dart';
import 'package:yoga_app/templates/ExerciseTemplate.dart';

class StandingVerticalStretchScreen extends StatelessWidget {
  const StandingVerticalStretchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ExerciseScreen(
      exerciseName: 'Standing Vertical Stretch',
      duration: 60,
      nextScreen: const CompletionScreen(),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/videos/stand.gif',
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
                    exerciseName: 'Standing Stretch',
                    replayScreen: StandingVerticalStretchScreen(),
                    nextExerciseScreen: CompletionScreen(),
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
