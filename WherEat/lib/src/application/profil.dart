import 'package:flutter/material.dart';
import 'package:whereat/src/application/profil.dart'; // Assurez-vous que le chemin est correct

void main() => runApp(Whereat());

class Whereat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilPage(), // Utilisation de la classe ProfilPage ici comme page d'accueil
    );
  }
}

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    // Votre code ici
  }
}
