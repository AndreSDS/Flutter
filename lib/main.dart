import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ) // MaterialApp
      ); // runApp
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String texto = "Informe seus dados!";
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  void _setMessageByImc(double imc) {
    Map tableMessage = {
      'abaixo': 'Abaixo do peso.',
      'normal': 'Peso ideal.',
      'sobrepeso': 'Levemente acima do peso.',
      'obesidade1': 'Obesidade grau I.',
      'obesidade2': 'Obesidade grau II.',
      'obesidade3': 'Obesidade grau III.'
    };

    if (imc < 18.6) {
      _setMessage(tableMessage['abaixo']);
    } else if (imc >= 18.6 && imc < 24.9) {
      _setMessage(tableMessage['normal']);
    } else if (imc >= 24.9 && imc < 29.9) {
      _setMessage(tableMessage['sobrepeso']);
    } else if (imc >= 29.9 && imc < 34.9) {
      _setMessage(tableMessage['obesidade1']);
    } else if (imc >= 34.9 && imc < 39.9) {
      _setMessage(tableMessage['obesidade2']);
    } else if (imc >= 40) {
      _setMessage(tableMessage['obesidade3']);
    }
  }

  void _setMessage(String message) {
    setState(() {
      texto = message;
    });
  }

  void _resetFields() {
    weightController.text = '';
    heightController.text = '';
    _setMessage("Informe seus dados!");
  }

  void _calculate() {
    double weight = double.parse(weightController.text);
    double height = double.parse(heightController.text) / 100;
    double imc = weight / (height * height);
    _setMessageByImc(imc);
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return TextField(
      keyboardType: TextInputType.number,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.blueAccent),
        border: const OutlineInputBorder(),
      ),
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.blueAccent, fontSize: 20.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calculadora de IMC'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _resetFields,
            )
          ],
        ), // AppBar
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Icon(Icons.account_circle_sharp,
                  size: 170.0, color: Colors.blueAccent),
              buildTextField('Peso (kg)', weightController),
              const Divider(),
              buildTextField('Altura (cm)', heightController),
              const Divider(),
              SizedBox(
                height: 50.0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                    ),
                    onPressed: _calculate,
                    child: const Text('Calcular',
                        style: TextStyle(color: Colors.white, fontSize: 25.0))),
              ),
              const Divider(),
              Text(
                texto,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(color: Colors.blueAccent, fontSize: 25.0),
              )
            ],
          ),
        ));
  }
}
