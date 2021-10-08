import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Perfil extends StatefulWidget {
  Perfil({Key? key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Perfil e Agenda'),
          backgroundColor: Colors.black87,
          elevation: 0,
          leading: IconButton(
              onPressed: () {}, icon: const Icon(AntDesign.arrowleft)),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(children: [
                    CircleAvatar(
                      radius: 90,
                      backgroundColor: Colors.black,
                      child: Image.asset('assets/images/home1.png'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Gustavo Lombardi',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/peso.png',
                                width: 50,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text('Peso',
                                  style: TextStyle(fontSize: 15)),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                '84KG',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/altura.png',
                                width: 50,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text('Altura',
                                  style: TextStyle(fontSize: 15)),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                '1.89',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Meus Planos',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    const SizedBox(
                      height: 10,
                    ),
                    ListTile(
                        title: const Text('FITNESS 1X FUNCIONAL, MUSCULAÇÃO\n'),
                        subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: const [
                                  Text('Vencimento'),
                                  Text('17/08/2022',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black))
                                ],
                              ),
                              Column(
                                children: const [
                                  Text('Situação'),
                                  Text('OK',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black)),
                                ],
                              ),
                            ])),
                   const  Divider(
                      color: Colors.black,
                    )
                  ]),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ));
  }
}
