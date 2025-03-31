import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAndKyjo4XfB6T0ReS_fiXdP7UIMkNFGyo",
            authDomain: "vashishtha-01-694d7.firebaseapp.com",
            projectId: "vashishtha-01-694d7",
            storageBucket: "vashishtha-01-694d7.firebasestorage.app",
            messagingSenderId: "874567237215",
            appId: "1:874567237215:web:1c65b7b9e0510c04fe25ea",
            measurementId: "G-CGMHJBFZZ9"));
  } else {
    await Firebase.initializeApp();
  }
}
