import 'package:flutter/material.dart';
import 'package:mentor_note/fetching/ui/fetching_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FetchingScreen(),
    );
  }
}
