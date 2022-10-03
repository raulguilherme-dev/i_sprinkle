import 'package:flutter/material.dart';
import 'package:i_sprinkle/cultura_page.dart';
import 'package:i_sprinkle/constantes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: 
                  Image.asset('assets/images/logo.png',
                    height: 50,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: 40
                  ),
                  child: Center(
                    child: Text('Smart Water',
                      style: TextStyle(
                        color: constantes.azul,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                    right: 10,
                    left: 10
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Previsão do tempo',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                      Text('Ver mais',
                        style: TextStyle(
                          fontSize: 12,
                          color: constantes.azul,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                    right: 10,
                    left: 10
                  ),
                  child: Container(
                    height: 140,
                    width: double.maxFinite,
                    // color: const Color(0xff5C91CE),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff5C91ce)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 4,
                        right: 8,
                        bottom: 4,
                        left: 4
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 20
                                  ),
                                  child: Image.asset('assets/images/intesidade-solar-icon.png',
                                  height: 65,),
                                ),
                                const Text('54.12 kB',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: constantes.cinzaClaro
                                ),),
                                const Text('Intensidade Solar',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: constantes.cinzaClaro
                                ),),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/images/umidade-icon.png',
                                height: 65,),
                                const Text('26 M³',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: constantes.cinzaClaro
                                ),),
                                const Text('Umidade do Ar',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: constantes.cinzaClaro
                                ),),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/images/co2-icon.png',
                                height: 65,),
                                const Text('900 Mд',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: constantes.cinzaClaro
                                ),),
                                const Text('Emissão de CO²',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: constantes.cinzaClaro
                                ),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ), 
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                    right: 10,
                    left: 10
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Culturas',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                      Text('Ver todas',
                        style: TextStyle(
                          fontSize: 12,
                          color: constantes.azul,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                    left: 10
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (var i = 0; i < 5; i++)
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(Radius.circular(30)),
                                child: Container(
                                  height: 250,
                                  width: 140,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images/arroz.jpg',
                                      )
                                    )
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context) {
                                        return const CulturaPage();
                                      },
                                    ),
                                  );  
                                  },
                                  child: Container(
                                    height: 250,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: AlignmentDirectional.bottomEnd,
                                        colors: [
                                          constantes.azul,
                                          Colors.white.withOpacity(0.0),
                                        ]
                                      )
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Arroz",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: 8,
                    left: 10
                  ),
                  child: Text('Ações Rápidas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var i = 0; i < 3; i++)
                      ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              color: constantes.azul
                            ),
                            Container(
                              height: 65,
                              width: 65,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/sprinkler-fire.png')
                                ),
                              )
                            ),
                          ]
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}