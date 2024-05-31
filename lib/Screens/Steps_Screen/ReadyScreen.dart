import 'package:flutter/material.dart';
import 'package:yoga_app/Ads/ad_manager.dart';
import 'package:yoga_app/Ads/ad_manager.dart';
import 'package:yoga_app/Screens/ExerciseScreen/DryLandSwimScreen.dart';
import 'dart:async';

class ReadyScreen extends StatefulWidget {
  const ReadyScreen({Key? key});

  @override
  _ReadyScreenState createState() => _ReadyScreenState();
}

class _ReadyScreenState extends State<ReadyScreen> {
  int _timerCount = 10;
  Timer? _timer;
  bool _isNavigated = false;

  @override
  void initState() {
    super.initState();
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
      _timer?.cancel();

      AdManager().showInterstitialAd();

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const DryLandSwimScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
      ),
      body: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50.0, left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ready to go',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Dry Land Swim',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '60 sec',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: 200,
              height: 200,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: _timerCount / 10,
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
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: TextButton(
              onPressed: () {
                _timer?.cancel();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DryLandSwimScreen()),
                );
              },
              child: const Text(
                'SKIP',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
