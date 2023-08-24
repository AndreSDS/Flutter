import 'package:first_flutter_app/classes/pessoa.dart';
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
  Pessoa pessoa = Pessoa('', 0.0, 0.0);
  String _errorMessage = "";
  TextEditingController nameController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  void _setErrorMessage(String message) {
    setState(() {
      _errorMessage = message;
    });
  }

  void _setPessoaInfos(String nome, double peso, double altura) {
    if (nome.isEmpty || peso <= 0 || altura <= 0) {
      _setErrorMessage('Preencha todos os campos!');
      return;
    }

    setState(() {
      pessoa.setNome(nome);
      pessoa.setPeso(peso);
      pessoa.setAltura(altura);
    });
  }

  void _resetFields() {
    nameController.text = '';
    weightController.text = '';
    heightController.text = '';

    _setPessoaInfos(
      '',
      0.0,
      0.0,
    );
  }

  void _calculate() {
    _setPessoaInfos(
      nameController.text,
      double.parse(weightController.text),
      double.parse(heightController.text) / 100,
    );
  }

  Widget buildTextField(
      String label, TextInputType type, TextEditingController controller) {
    return TextField(
      keyboardType: type,
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
              const Text(
                "Informe seus dados!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueAccent, fontSize: 25.0),
              ),
              const Divider(),
              buildTextField('Nome', TextInputType.name, nameController),
              const Divider(),
              buildTextField(
                  'Peso (kg)', TextInputType.number, weightController),
              const Divider(),
              buildTextField(
                  'Altura (cm)', TextInputType.number, heightController),
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
                pessoa.nome.isNotEmpty ? pessoa.toString() : '',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(color: Colors.blueAccent, fontSize: 25.0),
              ),
              Text(
                _errorMessage.isNotEmpty ? _errorMessage : '',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.redAccent, fontSize: 25.0),
              ),
            ],
          ),
        ));
  }
}
