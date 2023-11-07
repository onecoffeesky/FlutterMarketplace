import 'package:flutter/material.dart';



class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.white, // Cambia el color de fondo a blanco
                elevation: 0,
          leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.black,),
            onPressed: () {
                        Navigator.of(context).pushNamed('shoe');
              // Acción al presionar la flecha hacia atrás
            },
          ),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "REPRESENT",
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
              icon: const Icon(Icons.search, color: Colors.black ,), 
              onPressed: () {
                          Navigator.of(context).pushNamed('shoe');
                // Acción al presionar el ícono de corazón
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/img1.jpg'),
          const SizedBox(height: 20),
          Image.asset('assets/img2.jpg'),
          const SizedBox(height: 20),
          Image.asset('assets/img3.jpg'),
          const SizedBox(height: 20)
        ]
      ),
      )
    );
  }
}
