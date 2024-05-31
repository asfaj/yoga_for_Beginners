import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yoga_app/Ads/ad_manager.dart';
import 'package:yoga_app/Screens/Steps_Screen/SplashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  AdManager().initialize();
  AdManager().loadBannerAd();
  AdManager().loadInterstitialAd();
  AdManager().loadRewardedAd();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
