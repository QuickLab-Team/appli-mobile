import 'package:flutter/material.dart';
import 'package:application/core/constants/app_colors.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Image de fond
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_connexion.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Titre
          Positioned(
            top: 110,
            left: 20,
            right: 20,
            child: Container(
              child: const Text(
                'Quick Lab',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 15,
                      color: Colors.grey,
                      offset: Offset(1, 3),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Contenu de la page
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 200), // Espace entre les deux sections

                // Section avec l'image et le TextFormField pour l'identifiant
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        // Image profil à gauche
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/profil.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        // Champ de texte pour l'identifiant
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 40),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(6),
                              ],
                              decoration: const InputDecoration(
                                hintText: 'Identifiant',
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 30), // Espace entre les deux sections

                // Section avec l'image et le TextFormField pour le mot de passe
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // Image cadena à gauche
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/images/mdp.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            // Champ de texte pour le mot de passe
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, right: 40),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(6),
                                  ],
                                  decoration: const InputDecoration(
                                    hintText: 'Mot de passe',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                  ),
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Text "Mot de passe oublié" aligné à droite
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              print('Mot de passe oublié');
                            },
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.only(right: 40),
                            ),
                            child: const Text(
                              'Mot de passe oublié ?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20), // Espace entre les deux sections

                // Bouton de Connexion
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // à remplir plus tard
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.bleu,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      minimumSize: const Size(240, 50),
                    ),
                    child: const Text(
                      'CONNEXION',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),

                const SizedBox(height: 40), // Espace entre les deux sections

                // Ligne pour les textes "Mentions légales" et "S'inscrire"
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Text "Mention légales" avec un lien
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextButton(
                        onPressed: () {
                          print('Mention légales');
                        },
                        child: const Text(
                            'Mentions légales',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                decoration: TextDecoration.underline,
                            ),
                        ),
                      ),
                    ),

                    // Text "S'inscrire" avec un lien
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextButton(
                        onPressed: () {
                          print('S\'inscrire');
                        },
                        child: const Text(
                            'S\'inscrire',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                decoration: TextDecoration.underline,
                            ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}