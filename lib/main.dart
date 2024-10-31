import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/prayer_time_provider.dart';
import 'Screens/prayerTimeScreens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  ChangeNotifierProvider(
        create: (context) => prayerTimeProvider(),
          child:PrayerTimeScreens()),
      debugShowCheckedModeBanner: false,
    );
  }
}
