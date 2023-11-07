import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarea_flutter/services/allService.dart';

import 'package:tarea_flutter/widgets/navbar.dart';


class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final shoesService = Provider.of<ShoesService>(context);


    return Scaffold(
     appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.white, // Cambia el color de fondo a blanco
                elevation: 0,
          leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black,),
            onPressed: () {
                        Navigator.of(context).pushNamed('main');
              // Acción al presionar la flecha hacia atrás
            },
          ),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "FW19",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Cambia el color del texto a negro
                  fontFamily: "Impact",
                  fontStyle: FontStyle.italic,

                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.crop_square, color: Colors.black ,), 
              onPressed: () {
                          Navigator.of(context).pushNamed('shop');
                // Acción al presionar el ícono de corazón
              },
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 10.0, 
          mainAxisSpacing: 10.0, 
        ),
        itemCount: shoesService.allData.length, 
        itemBuilder: (context, index) {
          
          return CustomCard(allData: shoesService.allData[index],);
        },
      ),
    );
  }
}
class CustomCard extends StatelessWidget {
  final allData;

  CustomCard({Key? key, required this.allData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: AspectRatio(
              aspectRatio: 1, // Use a 1:1 aspect ratio for the image container
              child: Image.network(
                allData.pic,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  allData.name,
                  style: const TextStyle(
                    fontFamily: 'Impact',
                                      fontWeight: FontWeight.bold,),
                ),
                Text(
                  allData.price,
                  style: const TextStyle(
                    
                    fontFamily: 'Impact',
                                      fontStyle: FontStyle.italic,

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




