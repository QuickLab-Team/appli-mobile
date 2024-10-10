import 'package:flutter/material.dart';
import 'package:application/core/constants/app_colors.dart';
import 'package:application/presentation/widgets/button.dart';
import 'package:application/presentation/widgets/information.dart';

class FirstConnexionScreen extends StatelessWidget {
  const FirstConnexionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: Padding(
        padding: const EdgeInsets.only(right: 40, top: 80, left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Titre principal
                _buildTitle(),
                const SizedBox(height: 30),

                // Icônes et descriptions
                InfoRow(
                  icon: Icons.shopping_cart,
                  title: 'Suivez vos réservations',
                  description: 'QuickLab vous permet de réserver vos produits simplement',
                ),
                const SizedBox(height: 20),
                InfoRow(
                  icon: Icons.timer,
                  title: 'Gagnez un temps précieux',
                  description: "Réservez vos produits n'a jamais été aussi rapide ",
                ),
                const SizedBox(height: 20),
                InfoRow(
                  icon: Icons.notifications,
                  title: 'Soyez avertie',
                  description: 'Vous êtes prévenu dès que vos réservations sont prêtes',
                ),
                const SizedBox(height: 20),
              ],
            ),

            // Footer
            Center(
              child: Column(
                children: [
                  CustomButton(
                    text: 'Commencer',
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                  ),
                  const SizedBox(height: 20),

                  // Texte se connecter
                  _buildLoginText(context),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Méthode pour construire le titre
  Widget _buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Bienvenue',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          'sur',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          'QuickLab',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: AppColors.bleu,
          ),
        ),
      ],
    );
  }

  // Méthode pour construire le texte de connexion
  Widget _buildLoginText(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Vous avez déjà un compte ?',
          style: TextStyle(color: Colors.white),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          child: const Text(
            'Se connecter',
            style: TextStyle(
              color: AppColors.bleu,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}