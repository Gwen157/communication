import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onPressed;

  CustomButton({
    required this.label,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Couleur du bouton
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,  // Pour rendre les bords carrés
        ),
        minimumSize: Size(150, 200),  // Taille uniforme du bouton (Largeur, Hauteur)
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Espacement interne
        side: BorderSide(color: Colors.black, width: 1),  // Bordure noire pour les boutons
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 30,  // Taille du texte uniformisée
          fontWeight: FontWeight.bold, // Texte en gras
          color: Colors.black54,//colour noire
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
