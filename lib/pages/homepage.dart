import 'package:bottom_navbar/consts/constraints.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          left: true,
          right: true,
          top: true,
          bottom: true,
          child: Container(
              color: bgcolor,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text("WELCOME TO MY HOME PAGE",
                      style: TextStyle(fontSize: 40)),
                ),
              ))),
    );
  }
}
