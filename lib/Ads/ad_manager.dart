import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdManager {
  static final AdManager _instance = AdManager._internal();

  factory AdManager() {
    return _instance;
  }

  AdManager._internal();

  late BannerAd bannerAd;
  late InterstitialAd interstitialAd;
  late RewardedAd rewardedAd;
  bool isBannerAdLoaded = false;
  bool isInterstitialAdLoaded = false;
  bool isRewardedAdLoaded = false;

  void initialize() {
    MobileAds.instance.initialize();
  }

  void loadBannerAd() {
    bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-3940256099942544/9214589741',
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          isBannerAdLoaded = true;
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          isBannerAdLoaded = false;
        },
      ),
    );
    bannerAd.load();
  }

  void loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: 'ca-app-pub-3940256099942544/1033173712',
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          interstitialAd = ad;
          isInterstitialAdLoaded = true;
        },
        onAdFailedToLoad: (error) {
          isInterstitialAdLoaded = false;
        },
      ),
    );
  }

  void loadRewardedAd() {
    RewardedAd.load(
      adUnitId: 'ca-app-pub-3940256099942544/5224354917',
      request: AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          rewardedAd = ad;
          isRewardedAdLoaded = true;
        },
        onAdFailedToLoad: (error) {
          isRewardedAdLoaded = false;
        },
      ),
    );
  }

  Widget getBannerAdWidget() {
    if (isBannerAdLoaded) {
      return Container(
        alignment: Alignment.center,
        child: AdWidget(ad: bannerAd),
        width: bannerAd.size.width.toDouble(),
        height: bannerAd.size.height.toDouble(),
      );
    } else {
      return SizedBox();
    }
  }

  void showInterstitialAd() {
    if (isInterstitialAdLoaded) {
      interstitialAd.show();
    }
  }

  void showRewardedAd() {
    if (isRewardedAdLoaded) {
      rewardedAd.show(onUserEarnedReward: (ad, reward) {});
    }
  }
}
