import 'package:flutter/material.dart';
import 'package:i_sprinkle/config_page.dart';
import 'package:i_sprinkle/constantes.dart';
import 'package:i_sprinkle/dispositivos_page.dart';
import 'package:i_sprinkle/home_page.dart';
import 'package:i_sprinkle/profile_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        onPageChanged: setPaginaAtual,
        children: const [
          HomePage(),
          DispositivosPage(),
          ProfilePage(),
          ConfigPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaAtual,
        selectedItemColor: constantes.azul,
        unselectedItemColor: constantes.cinzaEscuro,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.monitor), label: "Dispositivos"),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity), label: "Perfil"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Configurações")
        ],
        onTap: (pagina) {
          pc.animateToPage(
            pagina, 
            duration: const Duration(microseconds: 400), 
            curve: Curves.ease);
        },
      ),
    );
  }
}