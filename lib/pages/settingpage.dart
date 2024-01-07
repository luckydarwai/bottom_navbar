import 'package:bottom_navbar/consts/constraints.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                color: bgcolor,
                child: const Center(
                    child: Text("it's all about to settings",
                        style: TextStyle(fontSize: 40))))));
  }
}
