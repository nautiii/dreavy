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
    apiKey: 'AIzaSyDQrxQ663mGvCesEr7kPihFiLIuKpzFpnw',
    appId: '1:497174394255:web:da5e06b00649d44ada47fa',
    messagingSenderId: '497174394255',
    projectId: 'dreavy-8bf62',
    authDomain: 'dreavy-8bf62.firebaseapp.com',
    storageBucket: 'dreavy-8bf62.appspot.com',
    measurementId: 'G-WE0JVCTEXM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDXqrlv_ot7ymiOnZMD4xWBJ0iiIzgErvw',
    appId: '1:497174394255:android:03c1994a3083bcc1da47fa',
    messagingSenderId: '497174394255',
    projectId: 'dreavy-8bf62',
    storageBucket: 'dreavy-8bf62.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBplJPhY4zwHsyjlOl2X_pAj5NpnBElydY',
    appId: '1:497174394255:ios:fcf90a1e032d5a93da47fa',
    messagingSenderId: '497174394255',
    projectId: 'dreavy-8bf62',
    storageBucket: 'dreavy-8bf62.appspot.com',
    iosClientId: '497174394255-8hs722su9mkmkk7oeo2a3l8rgh8rmggl.apps.googleusercontent.com',
    iosBundleId: 'com.nautiii.dreavy',
  );
}
