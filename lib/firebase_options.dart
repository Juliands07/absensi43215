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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBIBddVH3ujTTvyB1QphIOouZMNgytkK6c',
    appId: '1:558713038204:web:04f325d770c4fc0efdf0f9',
    messagingSenderId: '558713038204',
    projectId: 'absensi43215',
    authDomain: 'absensi43215.firebaseapp.com',
    storageBucket: 'absensi43215.appspot.com',
    measurementId: 'G-2LCE9ZLLY4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCFX43r42VJvPT9YIWUZBmC3L22W9WdjjE',
    appId: '1:558713038204:android:98f58ca5501f8503fdf0f9',
    messagingSenderId: '558713038204',
    projectId: 'absensi43215',
    storageBucket: 'absensi43215.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDV7KjU5ckDPUyx2SkLiIMlNEGoTa-cR88',
    appId: '1:558713038204:ios:60592add0a30a672fdf0f9',
    messagingSenderId: '558713038204',
    projectId: 'absensi43215',
    storageBucket: 'absensi43215.appspot.com',
    iosClientId: '558713038204-iuaieu3gci3f1uqn6dirvl1pba8vu5hs.apps.googleusercontent.com',
    iosBundleId: 'com.eurokarsproject.absensi43215',
  );
}
