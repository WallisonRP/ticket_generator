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

  _teste() async {
    // var statsRef = db.collection('stories').doc('--stats--');
    // var storyRef = db.collection('stories').doc(DateTime.now().microsecondsSinceEpoch.toString());
    await FirebaseFirestore.instance.collection('stories').doc('--stats--').update({"storyCount": FieldValue.increment(1)});

    // var batch = db.batch();
    // batch.set(storyRef, { 'title': 'New Story!' });
    // batch.set(statsRef, { 'storyCount': FieldValue.increment(1) });
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              _teste();
            }, child: Text("Teste"))
          ],
        ),
      ),
    );
  }
}