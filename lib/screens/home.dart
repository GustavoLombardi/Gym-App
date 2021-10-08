import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym/screens/emissao_senha.dart';
import 'package:gym/screens/perfil.dart';
import 'package:gym/screens/treinos.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(SimpleLineIcons.menu)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.black87, Colors.black87]),
                // image: DecorationImage(image: AssetImage('assetName'))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Align(
                  //  alignment: Alignment.topRight,
                  //  child: SvgPicture.asset("assets/icons/menu.svg"),
                  //),
                  //const SizedBox(
                  //  height: 20,
                  //),
                  Expanded(
                    child: Stack(children: [
                      Image.asset(
                        "assets/images/home1.png",
                        width: MediaQuery.of(context).size.width * 0.6,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.center,
                      ),
                      Positioned(
                          top: 20,
                          left: 200,
                          child: Column(
                            children: const [
                              Text(
                                'Bom Dia,',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'Gustavo Lombardi Dias',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                      Container(),
                    ]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('AGIT SPORTCENTER LTDA-EPP')
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  // const BoxShadow(
                  //   offset: Offset(0, 4),
                  //   blurRadius: 30,
                  //   color: Colors.black,
                  // ),
                ],
              ),
              child: Wrap(
                runSpacing: 40.0,
                spacing: 30.0,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                   HomeCard(
                    image: "assets/images/treino.png",
                    title: "Treino",
                    isActive: true,
                    onTap:  () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Treino()));
                    },
                    
                
                  ),
                   HomeCard(
                    image: "assets/images/senha.png",
                    title: "Emite Senha",
                    isActive: true,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EmissaoSenha()));
                    },
                  ),
                  HomeCard(
                    image: "assets/images/perfil.png",
                    title: "Perfil/Agenda",
                    isActive: true,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Perfil()));
                    },
                  ),
                  const HomeCard(
                    image: "assets/images/calendario.png",
                    title: "Grade Horários",
                    isActive: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            //  const AvisoCard(text:
            //                "Conforme diretrizes, será obrigatório o uso de máscara",
            //            image: "assets/images/wear_mask.png",
            //            title: "Uso Obrigatório de Máscara",),
          ],
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final String? image;
  final String? title;
  final bool? isActive;
  final VoidCallback? onTap;
  const HomeCard({
    Key? key,
    this.image,
    this.title,
    this.onTap,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 140,
        width: 140,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 20,
              color: Colors.black,
            )
          ],
        ),
        child: Column(
          children: <Widget>[
            Image.asset(image.toString(), height: 90),
            const SizedBox(
              height: 8,
            ),
            Text(
              title.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}

class AvisoCard extends StatelessWidget {
  final String? image;
  final String? title;
  final String? text;
  const AvisoCard({
    Key? key,
    this.image,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Image.asset(image.toString()),
            Positioned(
              left: 130,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      title.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                      //style: kTitleTextstyle.copyWith(
                      //  fontSize: 16,
                      //),
                    ),
                    Expanded(
                      child: Text(
                        text.toString(),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/icons/forward.svg"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
