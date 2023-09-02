import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(children: [
                  Expanded(child: Container()),
                  Expanded(
                    flex: 8,
                    child: Image.network(
                      "https://salvadortech.salvador.ba.gov.br/wp-content/uploads/2022/07/logo.png",
                    ),
                  ),
                  Expanded(child: Container()),
                ]),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Já tem cadastro?",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Faça seu login e make the change!",
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    width: double.infinity,
                    height: 30,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                        labelText: "Informe seu e-mail",
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 30,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: const Row(
                    children: [
                      Expanded(child: Text("Informe sua senha")),
                      Expanded(child: Text("Senha"))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 30,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: Colors.deepPurpleAccent,
                      ),
                      onPressed: () {
                        debugPrint("object");
                      },
                      child: const Text(
                        "Entrar",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: double.infinity,
                  height: 30,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: const Text(
                    "Esqueci minha senha",
                    style: TextStyle(
                        color: Colors.yellow, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 30,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: const Text(
                    "Criar minha conta",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          )),
    );
  }
}
