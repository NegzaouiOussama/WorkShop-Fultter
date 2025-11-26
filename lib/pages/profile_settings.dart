import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _currentPassword;
  late String _newPassword;
  late String _billingAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paramètres du profil"),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Image.asset("assets/images/minecraft.jpg", width: 460, height: 215)),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(border: OutlineInputBorder(), labelText: "Mot de passe actuel"),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Le mot de passe ne doit pas etre vide";
                  }
                  return null;
                },
                onSaved: (String? value) {
                  _currentPassword = value!;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(border: OutlineInputBorder(), labelText: "Nouveau mot de passe"),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Le mot de passe ne doit pas etre vide";
                  }
                  return null;
                },
                onSaved: (String? value) {
                  _newPassword = value!;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                decoration: const InputDecoration(border: OutlineInputBorder(), labelText: "Adresse de facturation"),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "L'adresse email ne doit pas etre vide";
                  }
                  return null;
                },
                onSaved: (String? value) {
                  _billingAddress = value!;
                },
              ),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: ElevatedButton(
                  child: const Text("Enregistrer"),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Ici vous pouvez ajouter la logique de sauvegarde
                      // Par exemple : appel à une API pour mettre à jour le profil
                    }
                  },
                )),
          ],
        ),
      ),
    );
  }
}

