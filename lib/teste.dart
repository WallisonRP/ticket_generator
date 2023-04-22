import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ticket_generator/firebase_options.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  var db = FirebaseFirestore.instance;
  TextEditingController nameController = TextEditingController();
  TextEditingController cellController = TextEditingController();

  _generateTicket() async {
    var statsRef = db.collection('senhasRetiradas').doc('--quantidadeSenhas--');
    var storyRef = db
        .collection('senhasRetiradas')
        .doc(DateTime.now().microsecondsSinceEpoch.toString());
    // await FirebaseFirestore.instance.collection('senhasRetiradas').doc('--quantidadeSenhas--').update({"contadorSenhas": FieldValue.increment(1)});

    var batch = db.batch();
    var docSnapshot = await db.collection('senhasRetiradas').get();
    print(docSnapshot.size);
    batch.set(
        storyRef, {'name': nameController.text, 'cell': cellController.text, 'senha': docSnapshot.size});
    batch.set(statsRef, {'contadorSenhas': FieldValue.increment(1)},
        SetOptions(merge: true));
    batch.commit();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
              controller: nameController,
              onChanged: (value) {
                print(nameController.text);
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Celular'),
              controller: cellController,
              onChanged: (value) {
                print(cellController.text);
              },
            ),
            ElevatedButton(
                onPressed: () {
                  _generateTicket();
                },
                child: Text("Teste"))
          ],
        ),
      ),
    );
  }
}
