import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {

  Color cor1 = const Color(0xff5191CE);
  Color cor2 = const Color(0xffEBEBEB);
  Color cor3 = const Color(0xff696969);

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
            right: 8,
            left: 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ 
              Image.asset('images/logo.png'),
              const Text("Cadastre-se", 
                style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                fontSize: 40)
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Nome",
                  border: OutlineInputBorder(),
                ),
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  border: OutlineInputBorder(),
                ),
              ),
              const TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder(),
                ),
              ),
              const Text(
                "Esqueceu a senha?", 
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  color: Color(0xff5191CE),
                ),
              ),
              ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  fixedSize: const Size(450, 60),
                  primary: const Color(0xff5191CE)
                ),
                child: const Text("Entrar",
                style: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 22,
                  color: Color(0xffEBEBEB)
                  )
                ),
              ),
              const Text("Ja possui uma conta?",
                style: TextStyle(
                  color: Color(0xff696969)
                ),
              ),
              const Text("Fazer login",
                style: TextStyle(
                  color: Color(0xff5191CE),
                  decoration: TextDecoration.underline
                ),
              ),
            ],),
        )
      ),
    );
  }
}