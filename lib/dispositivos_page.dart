import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:i_sprinkle/constantes.dart';
import 'package:i_sprinkle/home_page.dart';

class DispositivosPage extends StatefulWidget {
  const DispositivosPage({Key? key}) : super(key: key);

  @override
  State<DispositivosPage> createState() => _DispositivosPageState();
}

class _DispositivosPageState extends State<DispositivosPage> {

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
            const HomePage();
          },
        ),
        backgroundColor: Colors.white,
        title: const Text('Aspessores',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15
                  ),
                  child: Text('Arroz',
                    style: TextStyle(
                      color: constantes.azul,
                      fontSize: 16
                    ),
                  ),
                ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}