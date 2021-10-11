import 'package:flutter/material.dart';
import 'package:gym/screens/treinos_details.dart';
import 'package:get/get.dart';

class EmissaoSenha extends StatelessWidget {
  const EmissaoSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String horario = '13:00';

    return Scaffold(
        appBar: AppBar(
          title: const Text('Emissão de Senha'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: 8,
                itemBuilder: (ctx, i) => Stack(
                      children: [
                        InkWell(
                          child: ListTile(
                            title: Text(
                              'Data: 08/10/2021' + ' -' + horario.toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('MUSCULAÇÃO',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                        Column(
                                          children: const [
                                            Text('VAGAS/SENHAS',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text('20',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ]),
                                  const Text(
                                    'JOÃO, TODOS',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]),
                          ),
                          onTap: () {
                            Get.defaultDialog(
                                title: "Confirmar emissão de senha?",
                                backgroundColor: Colors.black87,
                                titleStyle:
                                    const TextStyle(color: Colors.white),
                                confirmTextColor: Colors.white,
                                cancelTextColor: Colors.white,
                                middleTextStyle:
                                    const TextStyle(color: Colors.black),
                                buttonColor: Colors.black,
                                textConfirm: 'Confirmar',
                                textCancel: 'Voltar',
                                onConfirm: () {
                                  Get.back();
                                  Get.defaultDialog(
                                    title: "Senha emitida com sucesso",
                                    backgroundColor: Colors.black87,
                                    titleStyle:
                                        const TextStyle(color: Colors.white),
                                    confirmTextColor: Colors.white,
                                    cancelTextColor: Colors.white,
                                    middleTextStyle:
                                        const TextStyle(color: Colors.black),
                                    buttonColor: Colors.black,
                                    textConfirm: 'OK',
                                    onConfirm: () {
                                      Get.back();
                                    }

                                  );
                                  
                                },
                                onCancel: () {});
                          },
                        ),
                      ],
                    ))));
  }
}
