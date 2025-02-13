import 'package:flutter/material.dart';
import 'package:whereat/src/application/maps_italien.dart';
import 'package:whereat/src/application/home.dart';

class FastfoodMain extends StatefulWidget {
  @override
  _FastfoodMainState createState() => _FastfoodMainState();
}

class _FastfoodMainState extends State<FastfoodMain> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECE7B4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              'Spécifiez votre envie',
              style: TextStyle(
                color: Color(0xFF406343),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Maps_Italien()), // Remplacez NextPage() par la page que vous souhaitez afficher
                  );// Action pour le fast-food
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF406343),
                  minimumSize: Size(350, 60),
                ),
                child: Text(
                  'Italien',
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
                  minimumSize: Size(350, 60),
                ),
                child: Text(
                  'Mexicain',
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
                  minimumSize: Size(350, 60),
                ),
                child: Text(
                  'Asiatique',
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
                  minimumSize: Size(350, 60),
                ),
                child: Text(
                  'Indien',
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
                  minimumSize: Size(350, 60),
                ),
                child: Text(
                  'Traditionnel',
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
                  minimumSize: Size(350, 60),
                ),
                child: Text(
                  'Un peu de Tout',
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
            icon: Icon(Icons.arrow_back), // Utilisation de l'icône de retour
            label: 'Retour',
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
          if (index == 0) {
            Navigator.pop(context); // Retourne à la page précédente
          }
          else if (index == 1) {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
            );
          }
          else {
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
