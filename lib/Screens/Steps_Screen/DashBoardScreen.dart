import 'package:flutter/material.dart';
import 'package:yoga_app/Ads/ad_manager.dart';
import 'package:yoga_app/Screens/Steps_Screen/DietScreen.dart';
import 'package:yoga_app/Screens/Steps_Screen/ExerciseDetailScreen.dart';
import 'package:yoga_app/Screens/Drawer_screens/TermScreen.dart';
import 'package:yoga_app/Screens/Drawer_screens/aboutScreen.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Yoga for Beginners',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                'Yoga App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Rate Us'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Share App'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Terms & Conditions'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TermsScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _buildCard(
                context,
                title: 'For Beginners',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExerciseDetailScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 30),
              _buildCard(
                context,
                title: 'For Advanced',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExerciseDetailScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 30),
              _buildCard(
                context,
                title: 'Diet & Yoga Tips',
                imagePath: 'assets/images/diet.png',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DietScreen(),
                    ),
                  );
                },
                displayIcon: false,
              ),
              const SizedBox(height: 30),
              AdManager().getBannerAdWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context,
      {required String title,
      required VoidCallback onTap,
      bool displayIcon = true,
      String? imagePath}) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: 1.0,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
              colors: [Colors.purple.withOpacity(0.3), Colors.white],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SizedBox(
            height: 250,
            width: double.infinity,
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              shadowColor: Colors.purple.withOpacity(0.5),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    if (imagePath != null)
                      Image.asset(
                        imagePath,
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    if (displayIcon)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildIconText(
                              Icons.local_fire_department, '30 Kcal'),
                          _buildIconText(Icons.favorite, '10'),
                          _buildIconText(Icons.access_time, '10 min'),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIconText(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, color: Colors.black),
        Text(text),
      ],
    );
  }
}
