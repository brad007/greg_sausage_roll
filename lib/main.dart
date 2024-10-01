import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:greg_sausage_roll/app.dart';
import 'package:greg_sausage_roll/firebase_options.dart';
import 'package:greg_sausage_roll/service_locator_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await configureDependencies();
  runApp(App());
}
