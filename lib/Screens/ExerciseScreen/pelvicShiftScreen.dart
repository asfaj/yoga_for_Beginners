import 'package:flutter/material.dart';
import 'package:yoga_app/Screens/ExerciseScreen/SeatedToeTouch.dart';
import 'package:yoga_app/templates/ExerciseOptionScreen.dart';
import 'package:yoga_app/templates/ExerciseTemplate.dart';

class PelvicShiftScreen extends StatelessWidget {
  const PelvicShiftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ExerciseScreen(
      exerciseName: 'Pelvic Shift',
      duration: 60,
      nextScreen: const SeatedToeTouchScreen(),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/videos/pelvic.gif',
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
                    exerciseName: 'Pelvic Shift',
                    replayScreen: PelvicShiftScreen(),
                    nextExerciseScreen: SeatedToeTouchScreen(),
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
