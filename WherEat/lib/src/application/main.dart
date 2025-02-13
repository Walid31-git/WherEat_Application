import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Pour utiliser la fonction Clipboard
import 'package:whereat/src/application/page.dart'; // Assurez-vous que le chemin est correct

void main() => runApp(Whereat());

class Whereat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page(), // Utilisation de la classe Page ici comme page d'accueil
    );
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page d\'accueil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contenu de la page',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Afficher un popup lorsque le bouton est pressé
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        "Partager cette application",
                        style: TextStyle(
                          color: Color(0xFFECE7B4), // Couleur du texte du titre
                          fontWeight: FontWeight.bold, // Mettre en gras
                          fontSize: 24, // Taille du texte
                        ),
                      ),
                      backgroundColor: Color(0xFF406343), // Couleur de fond du popup
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Divider(color: Color(0xFFECE7B4)), // Barre
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xFF305030), // Couleur de fond du rectangle
                              border: Border.all(
                                color: Color(0xFFECE7B4), // Couleur de la bordure
                                width: 2, // Épaisseur de la bordure
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: RichText(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xFFECE7B4), // Couleur du texte
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(
                                    text:
                                    "https://www.merriam-webster.com/dictionary/",
                                  ),
                                  TextSpan(
                                    text: "whereat",
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              String linkToCopy =
                                  "https://www.merriam-webster.com/dictionary/whereat";
                              Clipboard.setData(
                                ClipboardData(text: linkToCopy),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Lien copié!'),
                                ),
                              );
                            },
                            child: Text(
                              "Copier le lien",
                              style: TextStyle(
                                color: Color(0xFFECE7B4), // Couleur du texte du bouton
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.transparent),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: Color(0xFFECE7B4)), // Couleur de la bordure
                                  )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Fermer",
                              style: TextStyle(
                                color: Color(0xFFECE7B4), // Couleur du texte du bouton
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.transparent),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: Color(0xFFECE7B4)), // Couleur de la bordure
                                  )),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Afficher Popup'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFECE7B4)), // Couleur de fond du bouton
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
