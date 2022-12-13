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
    apiKey: 'AIzaSyBakW8mOSeEO5jZqBwvMxbPbv-0I8Fbirk',
    appId: '1:711533030310:web:66bce294437fbbdf33fd67',
    messagingSenderId: '711533030310',
    projectId: 'tripplanner-26cbd',
    authDomain: 'tripplanner-26cbd.firebaseapp.com',
    storageBucket: 'tripplanner-26cbd.appspot.com',
    measurementId: 'G-D2Y3NTSZFH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzM4ZIcCqJNPupKtoDoQGpTVYFa_OMYPk',
    appId: '1:711533030310:android:a9365b8d178265dd33fd67',
    messagingSenderId: '711533030310',
    projectId: 'tripplanner-26cbd',
    storageBucket: 'tripplanner-26cbd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7DjMtefa7PTGHXxnkyN6nq9u7q6neRE8',
    appId: '1:711533030310:ios:d4f5e5da3904858c33fd67',
    messagingSenderId: '711533030310',
    projectId: 'tripplanner-26cbd',
    storageBucket: 'tripplanner-26cbd.appspot.com',
    iosClientId: '711533030310-sgvtquk20b2f9o5itp1rc92nt545b9j6.apps.googleusercontent.com',
    iosBundleId: 'com.example.tripplanner',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7DjMtefa7PTGHXxnkyN6nq9u7q6neRE8',
    appId: '1:711533030310:ios:d4f5e5da3904858c33fd67',
    messagingSenderId: '711533030310',
    projectId: 'tripplanner-26cbd',
    storageBucket: 'tripplanner-26cbd.appspot.com',
    iosClientId: '711533030310-sgvtquk20b2f9o5itp1rc92nt545b9j6.apps.googleusercontent.com',
    iosBundleId: 'com.example.tripplanner',
  );
}