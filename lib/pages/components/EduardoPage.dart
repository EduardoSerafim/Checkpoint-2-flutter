import 'package:flutter/material.dart';

class EduardoPage extends StatelessWidget {
  final Widget body;
  final Function()? buttomFunction;
  EduardoPage({required this.body, this.buttomFunction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
        child: SingleChildScrollView(
          child: body,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: buttomFunction,
        child: Icon(Icons.add),
      ),
    );
  }
}
