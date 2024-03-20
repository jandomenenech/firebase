// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDYo3RawKxsQre7DJbOcLCXxrrPaKtXPzc',
    appId: '1:57293682347:web:02b90e0a265fda7c6ea9ee',
    messagingSenderId: '57293682347',
    projectId: 'fir-76d6f',
    authDomain: 'fir-76d6f.firebaseapp.com',
    storageBucket: 'fir-76d6f.appspot.com',
    measurementId: 'G-VVGLHW0CX2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHPgUtihwNveyagyxmmUlv13XHFDrHZoQ',
    appId: '1:57293682347:android:730459a42f58bd8b6ea9ee',
    messagingSenderId: '57293682347',
    projectId: 'fir-76d6f',
    storageBucket: 'fir-76d6f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAIMtfscy5qaW4kRvTIuD5hmHVdpo3k62o',
    appId: '1:57293682347:ios:2be8938b47cc88206ea9ee',
    messagingSenderId: '57293682347',
    projectId: 'fir-76d6f',
    storageBucket: 'fir-76d6f.appspot.com',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAIMtfscy5qaW4kRvTIuD5hmHVdpo3k62o',
    appId: '1:57293682347:ios:1c7b60df2e61124c6ea9ee',
    messagingSenderId: '57293682347',
    projectId: 'fir-76d6f',
    storageBucket: 'fir-76d6f.appspot.com',
    iosBundleId: 'com.example.firebase.RunnerTests',
  );
}
