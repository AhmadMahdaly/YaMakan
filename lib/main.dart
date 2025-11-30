import 'package:flutter/material.dart';
import 'package:yamakan/core/init/initializer.dart';
import 'package:yamakan/features/my_app/yamakan.dart';

Future<void> main() async {
  await initializeApp();
  runApp(const YaMakan());
}
