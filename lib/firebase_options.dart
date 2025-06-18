import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform, kIsWeb;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return const FirebaseOptions(
      apiKey: 'AIzaSyDUp3Ra3ulU6FRw9prf1Cm8u9gkUXqWHe0',
      appId: '1:682313391185:android:a86196c8a11eb29c396502',
      messagingSenderId: '682313391185',
      projectId: 'ai-balance-e4c78',
      storageBucket: 'ai-balance-e4c78.appspot.com',
    );
  }
}
