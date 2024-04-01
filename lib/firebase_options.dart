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
    apiKey: 'AIzaSyD4aNtEiwEp7lYH4nxIkTlEYOS5_yZ_HTs',
    appId: '1:157667218514:web:663625639b856264f93b8b',
    messagingSenderId: '157667218514',
    projectId: 'budget-manager-ec95e',
    authDomain: 'budget-manager-ec95e.firebaseapp.com',
    storageBucket: 'budget-manager-ec95e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAYShB93GDbsRc3y_7N7s4BQcfLFNd6lM0',
    appId: '1:157667218514:android:8364a1965542a194f93b8b',
    messagingSenderId: '157667218514',
    projectId: 'budget-manager-ec95e',
    storageBucket: 'budget-manager-ec95e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDNXZdwq9MJXtzh_d7Wz-tglDBwGHHm2YM',
    appId: '1:157667218514:ios:87090a80b4ff5c6af93b8b',
    messagingSenderId: '157667218514',
    projectId: 'budget-manager-ec95e',
    storageBucket: 'budget-manager-ec95e.appspot.com',
    iosBundleId: 'com.example.budgetBuddy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDNXZdwq9MJXtzh_d7Wz-tglDBwGHHm2YM',
    appId: '1:157667218514:ios:a01c46212945e1f9f93b8b',
    messagingSenderId: '157667218514',
    projectId: 'budget-manager-ec95e',
    storageBucket: 'budget-manager-ec95e.appspot.com',
    iosBundleId: 'com.example.budgetBuddy.RunnerTests',
  );
}