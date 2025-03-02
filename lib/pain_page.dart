import 'package:flutter/material.dart';
import 'widgets/custom_button.dart';

class PainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "J'ai mal",
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
                label: "Mains",
                color: Colors.grey,  // Couleur grise pour le bouton
                onPressed: () {
                  print("J'ai mal aux mains");
                  Navigator.pop(context);  // Retour à la page d'accueil
                },
              ),
              CustomButton(
                label: "Pieds",
                color: Colors.grey,  // Couleur grise pour le bouton
                onPressed: () {
                  print("J'ai mal aux pieds");
                  Navigator.pop(context);
                },
              ),
              CustomButton(
                label: "Tête",
                color: Colors.grey,  // Couleur grise pour le bouton
                onPressed: () {
                  print("J'ai mal à la tête");
                  Navigator.pop(context);
                },
              ),
              CustomButton(
                label: "Ventre",
                color: Colors.grey,  // Couleur grise pour le bouton
                onPressed: () {
                  print("J'ai mal au ventre");
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
Fs-c8K7Y