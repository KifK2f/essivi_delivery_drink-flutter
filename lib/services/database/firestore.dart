import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirestoreService {
  //Obtenir la collection des commandes de boissons
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  //Enregistrer une commande dans la base de données
  Future<void> saveOrderToDatabase(String receipt) async {
    await orders.add({
      'date': DateTime.now(),
      'order': receipt,
      //Ajouter s'autres champs au besoin
    });
  }
}
