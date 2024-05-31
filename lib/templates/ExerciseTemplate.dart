import 'dart:async';

import 'package:flutter/material.dart';

class ExerciseScreen extends StatefulWidget {
  final String exerciseName;
  final int duration;
  final Widget nextScreen;
  final Widget child;

  const ExerciseScreen({
    required this.exerciseName,
    required this.duration,
    required this.nextScreen,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  _ExerciseScreenState createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  late int _timerCount;
  Timer? _timer;
  bool _isNavigated = false;

  @override
  void initState() {
    super.initState();
    _timerCount = widget.duration;
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_timerCount > 0) {
          _timerCount--;
        } else {
          _timer?.cancel();
          _navigateToNextScreen();
        }
      });
    });
  }

  void _navigateToNextScreen() {
    if (!_isNavigated) {
      _isNavigated = true;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => widget.nextScreen),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.exerciseName,
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              '${widget.duration} sec',
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: 200,
              height: 200,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: _timerCount / widget.duration,
                    strokeWidth: 10.0,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.purple),
                    backgroundColor: Colors.grey[300],
                  ),
                  Center(
                    child: Text(
                      '$_timerCount',
                      style: const TextStyle(
                        fontSize: 48.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            widget.child,
          ],
        ),
      ),
    );
  }
}
