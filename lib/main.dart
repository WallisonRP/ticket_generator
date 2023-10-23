import 'package:flutter/material.dart';
import 'package:ticket_generator/intro.dart';
import 'package:ticket_generator/shop_page.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:ticket_generator/teste.dart';
import 'firebase_options.dart';

// ...
asdadasdasd


void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MaterialApp(
    home: Teste()
  ));
}
