import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (_, index) => const Card(),
        separatorBuilder: (_, __) => const SizedBox(),
        itemCount: 3,
      ),
    );
  }
}
