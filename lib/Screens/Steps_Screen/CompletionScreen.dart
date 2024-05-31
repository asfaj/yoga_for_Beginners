import 'package:flutter/material.dart';
import 'package:yoga_app/Ads/ad_manager.dart';
import 'package:yoga_app/Screens/Steps_Screen/DashBoardScreen.dart';

class CompletionScreen extends StatelessWidget {
  const CompletionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: const Text(
          'Exercise Completed',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/con.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 10),
            const Text(
              'You have completed your exercise',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  AdManager().showRewardedAd();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashBoardScreen()),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple[300],
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                ),
                child: const Text(
                  'FINISH',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
