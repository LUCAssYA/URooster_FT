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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQ_rZcDYKuvlXh5bUrI-CfUpVhHeKoc5g',
    appId: '1:637000776850:android:b92b50f71fce44f0e7ba4b',
    messagingSenderId: '637000776850',
    projectId: 'urooster-9bd19',
    storageBucket: 'urooster-9bd19.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCzxB2EvpeN23EZO9FbNZwzLjRd6RbrIGI',
    appId: '1:637000776850:ios:0c895d452dfe550fe7ba4b',
    messagingSenderId: '637000776850',
    projectId: 'urooster-9bd19',
    storageBucket: 'urooster-9bd19.appspot.com',
    iosClientId: '637000776850-6uhum8575ulrggofgbri5agenuv94h88.apps.googleusercontent.com',
    iosBundleId: 'com.example.urooster',
  );

  static const FirebaseOptions web = FirebaseOptions(
      apiKey: "AIzaSyDvdqn5RqUsyfguZostjm0TRolk91_M0jo",
      authDomain: "urooster-9bd19.firebaseapp.com",
      projectId: "urooster-9bd19",
      storageBucket: "urooster-9bd19.appspot.com",
      messagingSenderId: "637000776850",
      appId: "1:637000776850:web:71bd71e2e2a4623de7ba4b",
      measurementId: "G-TMH2SGHST9");
}