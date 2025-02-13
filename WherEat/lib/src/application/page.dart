import 'package:flutter/material.dart';

class NouvellePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nouvelle Page'),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Text(
            'Contenu de la nouvelle page',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
