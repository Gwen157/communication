import 'package:flutter/material.dart';
import 'widgets/custom_button.dart';

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "J'ai faim",
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
            crossAxisSpacing: 20,  // Espacement horizontal entre les boutons
            mainAxisSpacing: 20,   // Espacement vertical entre les boutons
            children: [
              CustomButton(
                label: "Bonbon",
                color: Colors.green,  // Couleur pour le bouton
                onPressed: () {
                  print("Bonbon");
                  Navigator.pop(context);
                },
              ),
              CustomButton(
                label: "Chocolat",
                color: Colors.brown,  // Couleur pour le bouton
                onPressed: () {
                  print("Chocolat");
                  Navigator.pop(context);
                },
              ),
              CustomButton(
                label: "Pain",
                color: Colors.yellow,  // Couleur pour le bouton
                onPressed: () {
                  print("Pain");
                  Navigator.pop(context);
                },
              ),
              CustomButton(
                label: "Chips",
                color: Colors.orange,  // Couleur pour le bouton
                onPressed: () {
                  print("Chips");
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
