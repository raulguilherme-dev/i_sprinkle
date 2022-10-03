import 'package:flutter/material.dart';
import 'constantes.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CulturaPage extends StatefulWidget {
  const CulturaPage({Key? key}) : super(key: key);

  @override
  State<CulturaPage> createState() => _CulturaPageState();
}

class _CulturaPageState extends State<CulturaPage> {

  bool state = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: const Text('Arroz',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (var i = 0; i < 3; i++)
                    ElevatedButton(
                      onPressed: () {},
                      style: 
                        ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          fixedSize: const Size(120, 20),
                          primary: constantes.cinzaClaro
                      ), 
                      child: const Text('Ligar Todos', 
                        style: TextStyle(
                          color: constantes.cinzaEscuro,
                          fontSize: 11,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularPercentIndicator(
                  arcType: ArcType.FULL,
                  animation: true,
                  radius: 300,
                  lineWidth: 30,
                  percent: 0.7,
                  progressColor: constantes.azul,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('1,23',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20
                          ),
                          child: const Text('kPA',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const Text('Temperatura Ambiente:',
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                          ),
                        ),
                        const Text('27ºC',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: constantes.azul
                        ),
                      ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 60
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: constantes.cinzaClaro,
                    fixedSize: Size(200, 40),
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {}, 
                  child: Text('Irrigar',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
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
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 10
                      ),
                      child: Text('Aspessor 01',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Switch(
                      value: state, 
                      onChanged: (bool s){
                        setState(() {
                          state = s;
                        });
                    })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}