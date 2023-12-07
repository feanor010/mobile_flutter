import 'package:flutter/material.dart';
import 'package:flutter_mobile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const Material();
  }
}

class Material extends StatelessWidget {
  const Material({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          //Prodisp
        ),
        useMaterial3: true,
      ),
      home: const Profile(),
    );
  }
}
