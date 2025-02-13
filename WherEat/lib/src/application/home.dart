import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  bool _checkBox1 = false;
  bool _checkBox2 = false;
  bool _checkBox3 = false;
  Color _popupColor = Color(0xFF406343);
  String _comment = '';
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECE7B4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Mon Historique',
              style: TextStyle(
                color: Color(0xFF406343),
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Divider(
            color: Color(0xFF406343),
            thickness: 9,
            indent: 5,
            endIndent: 5,
          ),
          SizedBox(height: 20),
          CommentSection(comment: _comment, searchValue: _searchController.text),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF406343),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Retour',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xFFECE7B4),
        onTap: (index) {
          if (index == 1) {
            showCustomDialog(context);
          } else if (index == 0) {
            setState(() {
              Navigator.pop(context);
            });
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        iconSize: 30,
        selectedFontSize: 25,
      ),
    );
  }

  void showCustomDialog(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          elevation: 5,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: BoxDecoration(
              color: _popupColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Laissez Votre Avis",
                    style: TextStyle(
                      color: Color(0xFFECE7B4),
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: textEditingController,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Rechercher le restaurant',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('😊', style: TextStyle(fontSize: 30)),
                    Checkbox(
                      value: _checkBox1,
                      onChanged: (value) {
                        setState(() {
                          _checkBox1 = value!;
                          if (value) {
                            _checkBox2 = false;
                            _checkBox3 = false;
                            _popupColor = Colors.green;
                          } else {
                            _popupColor = Color(0xFF406343);
                          }
                        });
                      },
                    ),
                    Text('😐', style: TextStyle(fontSize: 30)),
                    Checkbox(
                      value: _checkBox2,
                      onChanged: (value) {
                        setState(() {
                          _checkBox2 = value!;
                          if (value) {
                            _checkBox1 = false;
                            _checkBox3 = false;
                            _popupColor = Colors.orange;
                          } else {
                            _popupColor = Color(0xFF406343);
                          }
                        });
                      },
                    ),
                    Text('😡', style: TextStyle(fontSize: 30)),
                    Checkbox(
                      value: _checkBox3,
                      onChanged: (value) {
                        setState(() {
                          _checkBox3 = value!;
                          if (value) {
                            _checkBox1 = false;
                            _checkBox2 = false;
                            _popupColor = Colors.red;
                          } else {
                            _popupColor = Color(0xFF406343);
                          }
                        });
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    maxLines: 8,
                    decoration: InputDecoration(
                      hintText: 'Écrivez votre avis ici...',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _comment = value;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('🔓', style: TextStyle(fontSize: 30)),
                    Checkbox(
                      value: _checkBox1,
                      onChanged: (value) {
                        setState(() {
                          _checkBox1 = value!;
                          if (value) {
                            _checkBox2 = false;
                            _checkBox3 = false;
                          }
                        });
                      },
                    ),
                    Text('🔒', style: TextStyle(fontSize: 30)),
                    Checkbox(
                      value: _checkBox2,
                      onChanged: (value) {
                        setState(() {
                          _checkBox2 = value!;
                          if (value) {
                            _checkBox1 = false;
                            _checkBox3 = false;
                          }
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child: Text("Annuler"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (_comment.isNotEmpty) {
                              Navigator.of(context).pop();
                            } else {
                              // Handle empty comment
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: Text("Valider"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CommentSection extends StatelessWidget {
  final String comment;
  final String searchValue;

  CommentSection({required this.comment, required this.searchValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0.0),
      padding: EdgeInsets.all(16.0),
      width: 380, // Largeur fixe
      decoration: BoxDecoration(
        color: Color(0xFF406343), // Couleur de fond verte
        borderRadius: BorderRadius.circular(10.0), // Bords arrondis
      ),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Text(
            searchValue,
            style: TextStyle(fontSize: 24,
                color: Color(0xFFECE7B4),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            comment,
            style: TextStyle(fontSize: 20,
              color: Color(0xFFECE7B4),
            ),
          ),
        ],
      ),
    );
  }
}

