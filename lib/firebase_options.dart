// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyA9fAtckAe__jtwmHkpZBBHYnTQ-vXwRbA',
    appId: '1:555354388327:web:a92b2619795119f6f921c2',
    messagingSenderId: '555354388327',
    projectId: 'fooddeliveryapp-c6655',
    authDomain: 'fooddeliveryapp-c6655.firebaseapp.com',
    storageBucket: 'fooddeliveryapp-c6655.appspot.com',
    measurementId: 'G-J23ZN8Z7CR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBl4oVT-e8OJuv9hRu1Pvnpa3qGChhqAPg',
    appId: '1:555354388327:android:d5513b66c51e31c1f921c2',
    messagingSenderId: '555354388327',
    projectId: 'fooddeliveryapp-c6655',
    storageBucket: 'fooddeliveryapp-c6655.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDA5YE1H_UzJV9ADdX8Fu89xb8iazuqqfc',
    appId: '1:555354388327:ios:2de55d5116cf9d0ff921c2',
    messagingSenderId: '555354388327',
    projectId: 'fooddeliveryapp-c6655',
    storageBucket: 'fooddeliveryapp-c6655.appspot.com',
    iosBundleId: 'com.example.foodDeliveryApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDA5YE1H_UzJV9ADdX8Fu89xb8iazuqqfc',
    appId: '1:555354388327:ios:2de55d5116cf9d0ff921c2',
    messagingSenderId: '555354388327',
    projectId: 'fooddeliveryapp-c6655',
    storageBucket: 'fooddeliveryapp-c6655.appspot.com',
    iosBundleId: 'com.example.foodDeliveryApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA9fAtckAe__jtwmHkpZBBHYnTQ-vXwRbA',
    appId: '1:555354388327:web:0faa5fcaf5ea7990f921c2',
    messagingSenderId: '555354388327',
    projectId: 'fooddeliveryapp-c6655',
    authDomain: 'fooddeliveryapp-c6655.firebaseapp.com',
    storageBucket: 'fooddeliveryapp-c6655.appspot.com',
    measurementId: 'G-5BHYP80W6K',
  );
}
