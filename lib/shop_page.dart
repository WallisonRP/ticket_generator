import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Text("Senha atual"),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "36",
              style: TextStyle(
                fontSize: 40
              ),
            ),
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(), padding: EdgeInsets.all(30)),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("-"),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), padding: EdgeInsets.all(20)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("+"),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), padding: EdgeInsets.all(20)),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Text("Próximas senhas"),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ElevatedButton(
                  onPressed: () {},
                  child: Text("-"),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(), padding: EdgeInsets.all(24)),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          )
        ],
      ),
    ));
  }
}
