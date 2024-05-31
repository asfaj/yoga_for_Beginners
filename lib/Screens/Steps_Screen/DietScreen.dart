import 'package:flutter/material.dart';

class DietScreen extends StatelessWidget {
  const DietScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Yoga & Diet',
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange.withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.battery_charging_full_outlined,
                  color: Colors.orange,
                ),
              ),
              title: const Text(
                'Fuel Your Practice',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Text(
                'Focus on complex carbs, lean protein, and healthy fats.',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            ListTile(
              leading: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.local_drink_outlined,
                  color: Colors.blue,
                ),
              ),
              title: const Text(
                'Stay Hydrated',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: const Text(
                'Drink plenty of water throughout the day.',
                style: TextStyle(fontSize: 14.0, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 10.0),
            ListTile(
              leading: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green.withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.slow_motion_video_outlined,
                  color: Colors.green,
                ),
              ),
              title: const Text(
                'Mindful Eating',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: const Text(
                'Savor your food and eat slowly to avoid overeating.',
                style: TextStyle(fontSize: 14.0, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 10.0),
            ListTile(
              leading: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red.withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.battery_charging_full_outlined,
                  color: Colors.red,
                ),
              ),
              title: const Text(
                'Post-Yoga Boost',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: const Text(
                'Replenish energy with fruits, vegetables, or yogurt.',
                style: TextStyle(fontSize: 14.0, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 10.0),
            ListTile(
              leading: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple.withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.kitchen_outlined,
                  color: Colors.purple,
                ),
              ),
              title: const Text(
                'Pre-Yoga Snack',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: const Text(
                'Have a light snack 30 minutes before yoga.',
                style: TextStyle(fontSize: 14.0, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 10.0),
            ListTile(
              leading: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.teal.withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.access_alarm_outlined,
                  color: Colors.teal,
                ),
              ),
              title: const Text(
                'Consistent Meal Times',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: const Text(
                'Eat at regular intervals to maintain energy levels.',
                style: TextStyle(fontSize: 14.0, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 10.0),
            ListTile(
              leading: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.brown.withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.fastfood_outlined,
                  color: Colors.brown,
                ),
              ),
              title: const Text(
                'Avoid Heavy Meals',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: const Text(
                'Avoid heavy meals at least 2 hours before yoga.',
                style: TextStyle(fontSize: 14.0, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 10.0),
            ListTile(
              leading: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber.withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.nature_people_outlined,
                  color: Colors.amber,
                ),
              ),
              title: const Text(
                'Natural Foods',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: const Text(
                'Opt for whole, natural foods over processed ones.',
                style: TextStyle(fontSize: 14.0, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 10.0),
            ListTile(
              leading: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lime.withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.accessibility_new_outlined,
                  color: Colors.lime,
                ),
              ),
              title: const Text(
                'Balanced Diet',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: const Text(
                'Ensure your diet is balanced with all essential nutrients.',
                style: TextStyle(fontSize: 14.0, color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
