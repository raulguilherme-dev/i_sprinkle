import 'package:flutter/material.dart';
import 'constantes.dart';

import 'login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: constantes.azul,
                        width: 2
                      ),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/amanda.jpg')
                      ),
                    ),
                  ),
                ),
                const Text('Amanda Carvalho',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: 50
                  ),
                  child: Text('a.carvalho@agro.ifsertao.br',
                  style: TextStyle(
                    fontWeight: FontWeight.w100
                  ),
                  ),
                ),
                for (var i=0; i < 3; i++)
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 3,
                  ),
                  child: Container(
                    height: 40,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: constantes.cinzaClaro
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10
                          ),
                          child: Text('Amanda',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: 30
                  ),
                ),
                for (var i=0; i < 3; i++)
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 3,
                  ),
                  child: Container(
                    height: 40,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: constantes.cinzaClaro
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                          ),
                          child: Text('Culturas',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded,
                          color: constantes.cinzaEscuro,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50
                  ),
                  child: Container(
                    height: 50,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const LoginPage();
                        }),);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Sair',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )  
      ),
    );
  }
}