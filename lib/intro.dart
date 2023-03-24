import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticket_generator/shop_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            Text(
              "M",
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Text("Entrar como:"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Cliente"),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(240, 40),
                  shape: StadiumBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ShopPage()));
              },
              child: Text("Estabelecimento"),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(240, 40),
                  shape: StadiumBorder()),
            ),
          ],
        ),
      ),
    );
  }
}
