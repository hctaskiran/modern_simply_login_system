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
    apiKey: 'AIzaSyBZWlrz-nTCqlWFPxmXWKHspHVKvcSIsLY',
    appId: '1:696758427475:web:47cf0b28ca308c8c310ba6',
    messagingSenderId: '696758427475',
    projectId: 'loginsystemauth-ca776',
    authDomain: 'loginsystemauth-ca776.firebaseapp.com',
    storageBucket: 'loginsystemauth-ca776.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXB6hxAeTjNWLJF03SamcREZeYRQJw62U',
    appId: '1:696758427475:android:e3bd749ddf772008310ba6',
    messagingSenderId: '696758427475',
    projectId: 'loginsystemauth-ca776',
    storageBucket: 'loginsystemauth-ca776.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD9xmti13a2bNfcbMNPr7K2QCeGiFPiRAo',
    appId: '1:696758427475:ios:33bcde4b10c39f93310ba6',
    messagingSenderId: '696758427475',
    projectId: 'loginsystemauth-ca776',
    storageBucket: 'loginsystemauth-ca776.appspot.com',
    iosClientId: '696758427475-m7ugqs6nmki65amg4tot3m7953ee6ab3.apps.googleusercontent.com',
    iosBundleId: 'com.example.modernSimplyLoginSystem',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD9xmti13a2bNfcbMNPr7K2QCeGiFPiRAo',
    appId: '1:696758427475:ios:8c6289019c40d3cf310ba6',
    messagingSenderId: '696758427475',
    projectId: 'loginsystemauth-ca776',
    storageBucket: 'loginsystemauth-ca776.appspot.com',
    iosClientId: '696758427475-d8o7dbaa67q85825m31n7840l9gcrkog.apps.googleusercontent.com',
    iosBundleId: 'com.example.modernSimplyLoginSystem.RunnerTests',
  );
}
