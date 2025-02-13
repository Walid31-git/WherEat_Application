import 'package:flutter/material.dart';
import 'package:whereat/src/application/fastfood.dart';
import 'package:whereat/src/application/home.dart';
class ConsomateurMain extends StatefulWidget {
  @override
  _ConsomateurMainState createState() => _ConsomateurMainState();
}

class _ConsomateurMainState extends State<ConsomateurMain> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECE7B4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '\t Que Voulez-vous \n Manger Aujourd\'hui ?',
            style: TextStyle(
              color: Color(0xFF406343),
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 100),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FastfoodMain()), // Remplacez NextPage() par la page que vous souhaitez afficher
                  );// Action pour le fast-food
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF406343),
                  minimumSize: Size(300, 80),
                ),
                child: Text(
                  'FAST-FOOD',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFECE7B4),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Action pour le restaurant
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF406343),
                  minimumSize: Size(300, 80),
                ),
                child: Text(
                  'Restaurant',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFECE7B4),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Action pour la cafétéria
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF406343),
                  minimumSize: Size(300, 80),
                ),
                child: Text(
                  'Cafétéria',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFECE7B4),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF406343), // Couleur de fond du bottomNavigationBar
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Recherche',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _currentIndex, // Utilisation de l'index actuel
        selectedItemColor: Color(0xFFECE7B4),
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()), // Remplacez NextPage() par la page que vous souhaitez afficher
            ); // Retourne à la page précédente
          } else {
            setState(() {
              _currentIndex = index; // Mettre à jour l'index lorsqu'un élément est sélectionné
            });
          }
        },
        iconSize: 30,
        selectedFontSize: 25,
      ),
    );
  }
}
