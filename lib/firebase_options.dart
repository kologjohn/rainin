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
    apiKey: 'AIzaSyAfy3HdjVK_prO7kd341leKbF5qrIoVrb4',
    appId: '1:121429825603:web:ca4074b620001b4c259cf6',
    messagingSenderId: '121429825603',
    projectId: 'raininmall',
    authDomain: 'raininmall.firebaseapp.com',
    storageBucket: 'raininmall.appspot.com',
    measurementId: 'G-7QED09JMEP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBIhgF4tKKoU0LDUtNRknYZLvo4lsTrc-k',
    appId: '1:121429825603:android:f23709cb6e886bf3259cf6',
    messagingSenderId: '121429825603',
    projectId: 'raininmall',
    storageBucket: 'raininmall.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDV6dN--IZ2FfK9XALOEKgFkW49Mtao5Xk',
    appId: '1:121429825603:ios:75d5ff071b77f22c259cf6',
    messagingSenderId: '121429825603',
    projectId: 'raininmall',
    storageBucket: 'raininmall.appspot.com',
    iosBundleId: 'com.kologsoft.com.raininn',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDV6dN--IZ2FfK9XALOEKgFkW49Mtao5Xk',
    appId: '1:121429825603:ios:8833caf8e3754c8e259cf6',
    messagingSenderId: '121429825603',
    projectId: 'raininmall',
    storageBucket: 'raininmall.appspot.com',
    iosBundleId: 'com.kologsoft.com.raininn.RunnerTests',
  );
}
