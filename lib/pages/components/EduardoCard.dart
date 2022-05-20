import 'package:flutter/material.dart';

class EduardoCard extends StatelessWidget {

  final String upperText;
  final String bottomText;

  EduardoCard({required this.bottomText , required this.upperText});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration:BoxDecoration(border: Border(bottom: BorderSide(width: 2))),
        
        child: Column(
          children: [
            Text(upperText, style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 1),
            Text(bottomText)
          ],
        )    
    );
  }
}
