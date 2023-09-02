import 'package:flutter/material.dart';
import 'package:first_flutter_app/service/generate_random_num.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberRandom = 0;
  int clickQuantity = 0;

  void _generateNumber() {
    setState(() {
      clickQuantity++;
      numberRandom = generateRandomNumber(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meu App",
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Ações do usuário",
            ),
            Text(
              "Número de clicks: $clickQuantity",
            ),
            Text(numberRandom.toString()),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.redAccent,
                    child: const Text("10"),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Container(
                    color: Colors.blueAccent,
                    child: const Text("20"),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.greenAccent,
                    child: const Text("30"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _generateNumber, child: const Icon(Icons.add)),
    );
  }
}
