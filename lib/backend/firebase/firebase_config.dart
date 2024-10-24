import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC37G0fuDOxYS5R2lyuuxj7qSP0gvEDhDU",
            authDomain: "next-level-b2bojf.firebaseapp.com",
            projectId: "next-level-b2bojf",
            storageBucket: "next-level-b2bojf.appspot.com",
            messagingSenderId: "239946596213",
            appId: "1:239946596213:web:4e86fb531a93b2f77c1d3c"));
  } else {
    await Firebase.initializeApp();
  }
}
