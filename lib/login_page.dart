import 'package:flutter/material.dart';
import 'constantes.dart';
import 'menu_page.dart';

import 'cadastro_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            bottom: 30,
            right: 10,
            left: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15
                  ),
                  child: Image.asset('assets/images/logo.png',
                    height: 150,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: 40
                  ),
                  child: Text("Acesse sua conta",
                  textAlign: TextAlign.center, 
                    style: TextStyle(
                      fontFamily: 'RobotoCondensed',
                      fontWeight: FontWeight.bold,
                    fontSize: 40)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 8.0,
                          spreadRadius: 2.0,
                          offset: const Offset(4, 3)
                        )
                      ]
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 25
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 8.0,
                          spreadRadius: 2.0,
                          offset: const Offset(4, 3)
                        )
                      ]
                    ),
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Senha",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 40,
                  ),
                  child: Container(
                    width: double.maxFinite,
                    child: const Text(
                      "Esqueceu a senha?", 
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'RobotoCondensed',
                        color: constantes.azul,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 40,
                    bottom: 35
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) {
                          return const MenuPage();
                        }
                      ),
                    );
                  },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      fixedSize: const Size(double.maxFinite, 60),
                      primary: constantes.azul
                    ),
                    child: const Text("Entrar",
                    style: TextStyle(
                      fontFamily: 'RobotoCondensed',
                      fontSize: 22,
                      color: constantes.cinzaClaro
                      )
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: 5
                  ),
                  child: Text("Ainda não possui conta?",
                    style: TextStyle(
                      color: constantes.cinzaEscuro
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const CadastroPage();
                      }
                    ),);
                  },
                  child: const Text("Cadastre-se aqui",
                    style: TextStyle(
                      color: constantes.azul,
                      decoration: TextDecoration.underline
                      
                    ),
                  ),
                ),
              ],),
          ),
        )
      ),
    );
  }
}