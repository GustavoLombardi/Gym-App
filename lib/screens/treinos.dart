import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gym/screens/treinos_details.dart';

class Treino extends StatefulWidget {
 
  const Treino({Key? key,}) : super(key: key);

  @override
  _TreinoState createState() => _TreinoState();
}

class _TreinoState extends State<Treino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Meus Treinos'),
        centerTitle: true,
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(SimpleLineIcons.menu)),
      ),

      body: InkWell(
        child: Column(
          children: [
            Column(children:  [
              SizedBox(
                height: 40,
              ),
              TreinoCard(title:  'Treino A', details: 'Biceps', professor: 'Fernando', data: '02/09/2021' , image: 'assets/images/biceps.png',onTap: (){ Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  DetalhesTreino(title: 'Treino A')));},),
              TreinoCard(title:  'Treino B', details: 'Triceps', professor: 'Igor',data: '08/10/2021 ',image: 'assets/images/home1.png' ,onTap: (){ Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  DetalhesTreino(title: 'Treino B')));},),
              TreinoCard(title:  'Treino C', details: 'Perna', professor: 'Fernando',data: '05/09/2021',image: 'assets/images/legs.png', onTap: (){ Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  DetalhesTreino(title: 'Treino C')));},),
            ]),
          ],
        ),
      ),
      //onTap: onTap,
    );
  }
}

class TreinoCard extends StatelessWidget {
  final String? image;
  final String? title;
  final String? details;
  final String? professor;
  final String? data;
  final bool? isActive;
  final VoidCallback? onTap;
  const TreinoCard({
    Key? key,
    this.image,
    this.title,
    this.details,
    this.professor,
    this.data,
    this.onTap,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
            height: 120.0,
            margin: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 24.0,
            ),
            child: Stack(
              children: <Widget>[
                CardTreinos(title: title, details: details, professor: professor, data: data, onTap: onTap,),
                PhotoCard(image: image,),
              ],
            )));
  }
}

class PhotoCard extends StatelessWidget {
  final String? image;

  final bool? isActive;
  final VoidCallback? onTap;
  const PhotoCard({
    Key? key,
    this.image,
    this.onTap,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
  margin: const EdgeInsets.symmetric(vertical: 16.0),
  alignment: FractionalOffset.centerLeft,
  child: CircleAvatar(
    radius: 40,
    backgroundColor: Colors.white,
    child: Image.asset(
      image.toString(),
      width: 92,
      height: 92,
    ),
  ),
);
  }
}

class CardTreinos extends StatelessWidget {
  final String? image;
  final String? title;
  final String? details;
  final String? professor;
  final String? data;
  final bool? isActive;
  final VoidCallback? onTap;
  const CardTreinos({
    Key? key,
    this.image,
    this.title,
    this.details,
    this.professor,
    this.data,
    this.onTap,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
  child: Container(
  height: 124.0,
  margin: const EdgeInsets.only(left: 46.0),
  decoration: BoxDecoration(
    color: Colors.black87,
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(8.0),
    boxShadow: const [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 10.0,
        offset: Offset(0.0, 10.0),
      ),
      
    ],
    
  ),
  child: InkWell(
    child: Container(
          margin: const EdgeInsets.only(top: 16.0, left: 72.0),
          constraints:  const BoxConstraints.expand(),
          child:  Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(title.toString() ,style: const TextStyle(color: Colors.white)),
               Text(details.toString(), style: const TextStyle(color: Colors.white)),
               Container(
                color: const Color(0xFF00C6FF),
                width: 24.0,
                height: 1.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0)
              ),
               Row(
                children: <Widget>[
                   const Icon(Icons.person, size: 14.0,
                    color: Colors.white),
                   Text(
                   professor.toString(), style: const TextStyle(color: Colors.white)),
                   Container(width: 24.0),
                  const  Icon(Entypo.clock, size: 14.0,
                    color: Colors.white),
                   Text(
                    data.toString(), style: const TextStyle(color: Colors.white)),
                ],
              )
            ],
          ),
        ),
        onTap: onTap,
  ),
)
    );


  }
}

