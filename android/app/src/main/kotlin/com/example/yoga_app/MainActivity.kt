package com.example.yoga_app

import android.os.Bundle 
import com.example.yoga_app.R 
import io.flutter.embedding.android.FlutterActivity
import com.google.android.gms.ads.MobileAds

class MainActivity: FlutterActivity()
 {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
   

    MobileAds.initialize(this) {}
  }
}
