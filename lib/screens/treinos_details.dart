import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gym/data/dummy_data.dart';
import 'package:gym/data/treino_data.dart';


class DetalhesTreino extends StatelessWidget {
  final String? title;
  final List<Treino> loadedProducts = dummyTreinos;
  DetalhesTreino({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title.toString()),
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {
             
            }, icon: const Icon(AntDesign.arrowleft)),
      ),
      
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: loadedProducts.length,
            itemBuilder: (ctx, i) => Stack(
              children: <Widget>[
                const SizedBox(height: 10,),
                CardTreinos(title: loadedProducts[i].title,details:loadedProducts[i].description, series: loadedProducts[i].series,),
                PhotoCard(image: loadedProducts[i].imageUrl,),
              ],
            )
          )
        ));
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
       backgroundColor: Colors.white60,
       child: Image.asset(
        image.toString(),
        width: 92,
        height: 92,
       ),
     )
);
  }
}

class CardTreinos extends StatelessWidget {
  final String? image;
  final String? title;
  final String? details;
  final String? series;
  final String? data;
  final bool? isActive;
  final VoidCallback? onTap;
  const CardTreinos({
    Key? key,
    this.image,
    this.title,
    this.details,
    this.series,
    this.data,
    this.onTap,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
  child: Container(
  height: 110,
  margin: const EdgeInsets.only(left: 46.0),
  decoration: BoxDecoration(
    color: Colors.white,
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
               Text(title.toString() ,style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
               Text(details.toString(), style: const TextStyle(color: Colors.black)),
               Container(
                color: const Color(0xFF00C6FF),
                width: 24.0,
                height: 1.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0)
              ),
               Row(
                children: <Widget>[
                   const Icon(Entypo.clock, size: 14.0,
                    color: Colors.black),
                   Text(
                   series.toString(), style: const TextStyle(color: Colors.black)),
                   Container(width: 24.0),
               //  const  Icon(Icons.person, size: 14.0,
               //    color: Colors.black),
               //   Text(
               //    data.toString(), style: const TextStyle(color: Colors.black)),
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
