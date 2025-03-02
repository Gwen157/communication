import 'package:flutter/material.dart';
import 'pain_page.dart';
import 'food_page.dart';
import 'drink_page.dart';  // Import de la nouvelle page DrinkPage
import 'widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Communication",
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Ligne avec les boutons "J'ai faim" et "J'ai soif"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    label: "J'ai faim",  // Texte du bouton
                    color: Colors.orange,  // Couleur orange pour "J'ai faim"
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FoodPage()), // Page de la catégorie "J'ai faim"
                      );
                    },
                  ),
                  SizedBox(width: 20),  // Espacement entre les boutons
                  CustomButton(
                    label: "J'ai soif",  // Texte du bouton
                    color: Colors.blue,  // Couleur bleue pour "J'ai soif"
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DrinkPage()), // Navigation vers la page "J'ai soif"
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),  // Espacement entre les lignes

              // Ligne avec les boutons "Oui" et "Non" côte à côte
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    label: "OUI",  // Texte du boutonOui
                    color: Colors.green,  // Couleur verte pour "Oui"
                    onPressed: () {
                      print("Réponse : Oui");
                    },
                  ),
                  SizedBox(width: 20),  // Espacement entre les boutons
                  CustomButton(
                    label: "Non",  // Texte du bouton
                    color: Colors.red,  // Couleur rouge pour "Non"
                    onPressed: () {
                      print("Réponse : Non");
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),  // Espacement entre les lignes

              // Ligne avec le bouton "J'ai mal"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    label: "J'ai mal",  // Texte du bouton
                    color: Colors.grey,  // Couleur grise pour "J'ai mal"
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PainPage()), // Page de la catégorie "J'ai mal"
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
