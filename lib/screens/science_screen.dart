import 'package:flutter/material.dart';
import 'package:saep_reakcje_organiczne/components/blue_app_bar.dart';

class ScienceScreen extends StatefulWidget {
  static const String id = 'science_screen';
  ScienceScreen({super.key});

  @override
  _ScienceScreenState createState() => _ScienceScreenState();
}

class _ScienceScreenState extends State<ScienceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BlueAppBar(),
      backgroundColor: Colors.white,
      body: Column(),
    );
  }
}
