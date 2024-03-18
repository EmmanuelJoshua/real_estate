import 'dart:async';

import 'package:flutter/material.dart';
import 'package:real_estate/core/core.dart';
import 'package:real_estate/core/theme/theme.dart';
import 'package:real_estate/views/screens/dashboard/dashboard.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      runApp(const MyApp());
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real estate',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
