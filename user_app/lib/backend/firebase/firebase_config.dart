import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDfG3af7gGe_FrkpRYuMgaLGAoAlDaJjj8",
            authDomain: "fooddeli-2ec30.firebaseapp.com",
            projectId: "fooddeli-2ec30",
            storageBucket: "fooddeli-2ec30.appspot.com",
            messagingSenderId: "910385601701",
            appId: "1:910385601701:web:89a225411a1031a98d414c",
            measurementId: "G-P9GHR95N18"));
  } else {
    await Firebase.initializeApp();
  }
}
