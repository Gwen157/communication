import 'package:flutter/material.dart';
import 'widgets/custom_button.dart';

class DrinkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "J'ai soif",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false, // Désactive la flèche de retour
      ),
      body: Container(
        color: Colors.grey[200],  // Fond gris clair pour la page
        child: Center(
          child: GridView.count(
            padding: EdgeInsets.all(16.0),
            crossAxisCount: 2,  // Deux boutons par ligne
            crossAxisSpacing: 20,  // Espacement entre les boutons horizontalement
            mainAxisSpacing: 20,   // Espacement entre les boutons verticalement
            children: [
              CustomButton(
                label: "Eau",  // Texte du bouton
                color: Colors.blueAccent,  // Couleur bleue pour "Eau"
                onPressed: () {
                  print("J'ai soif d'eau");
                  Navigator.pop(context);
                  // Vous pouvez ajouter une action supplémentaire ici, si nécessaire.
                },
              ),
              CustomButton(
                label: "Jus",  // Texte du bouton
                color: Colors.orange,  // Couleur orange pour "Jus"
                onPressed: () {
                  print("J'ai soif de jus");
                  Navigator.pop(context);
                  // Vous pouvez ajouter une action supplémentaire ici, si nécessaire.
                },
              ),
              CustomButton(
                label: "Lait",  // Texte du bouton
                color: Colors.white,  // Couleur blanche pour "Lait"
                onPressed: () {
                  print("J'ai soif de lait");
                  Navigator.pop(context);
                  // Vous pouvez ajouter une action supplémentaire ici, si nécessaire.
                },
              ),
              CustomButton(
                label: "Thé",  // Texte du bouton
                color: Colors.green,  // Couleur verte pour "Thé"
                onPressed: () {
                  print("J'ai soif de thé");
                  Navigator.pop(context);
                  // Vous pouvez ajouter une action supplémentaire ici, si nécessaire.
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
