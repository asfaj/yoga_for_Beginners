import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseImage extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final BoxFit fit;

  const FirebaseImage({
    super.key,
    required this.imagePath,
    this.width = 100,
    this.height = 100,
    this.fit = BoxFit.cover,
  });

  Future<String> _getImageUrl() async {
    try {
      final storageRef = FirebaseStorage.instance.ref().child(imagePath);
      String downloadUrl = await storageRef.getDownloadURL();
      return downloadUrl;
    } catch (error) {
      print("Error fetching image: $error");
      return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _getImageUrl(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError ||
            !snapshot.hasData ||
            snapshot.data!.isEmpty) {
          return const Icon(Icons.error);
        } else {
          return Image.network(
            snapshot.data!,
            width: width,
            height: height,
            fit: fit,
          );
        }
      },
    );
  }
}
