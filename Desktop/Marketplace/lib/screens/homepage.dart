import 'package:flutter/material.dart';


class ProductSingle extends StatelessWidget {
  const ProductSingle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              icon: const Icon(Icons.favorite, color: Colors.black ,), 
              onPressed: () {
                          Navigator.of(context).pushNamed('shop');
                // Acción al presionar el ícono de corazón
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          buildFullscreenContainer(context),
          TwoSectionContainer(),
          BlackButton(), // Add the black button
        ],
      ),
    );
  }

  
  Image fullscreenImage() {
    return Image.asset(
      'assets/sneaker.jpg', // Adjust the path as needed
      fit: BoxFit.cover,
    );
  }

  Container buildFullscreenContainer(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      color: Color.fromARGB(255, 166, 100, 33),
      child: fullscreenImage(),
    );
  }

  Widget leftSection() {
    return SizedBox(
      width: 50,
      child: Container(
        child: Column(
          children: [
            // First vertical section with ListWheelScrollView
            Expanded(
              child: ListWheelScrollView(
                itemExtent: 50, // Adjust this value as needed
                useMagnifier: true,
                magnification: 1.3,
                children: List<Widget>.generate(11, (index) {
                  return Center(
                    child: Text(
                      '$index',
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                }),
              ),
            ),
            // Second vertical section
            Expanded(
              flex: 2, // Adjust the flex value to make it larger
              child: Container(
                  // Add your content for the second section here
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded rightSection() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "COLOR",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'fightt3_',
                        ),
                      ),
                    ),
                    CircleWidget(Colors.black),
                    CircleWidget(Color.fromARGB(255, 52, 52, 52)),
                    CircleWidget(Color.fromARGB(255, 144, 123, 39)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
              height: 20), // Add space between the color section and size text
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Text(
              "SIZE",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'fightt3_',
              ),
            ),
          ),
          const Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(20.0), // Add padding to the text
                child: SingleChildScrollView(
                  child: Text(
                    "En un trigal, tres tristes tigres tragan trigo "
                    "mientras tragones trillan trigo. "
                    "Tragan trigo tres tristes tigres en un trigal,"
                    "trillan trigo mientras tragan trigo, "
                    "¡tres tristes tigres tragones trillan trigo! "
,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 2.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget TwoSectionContainer() {
    return Expanded(
      child: Row(
        children: [
          leftSection(),
          rightSection(),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget BlackButton() {
    return Container(
      width: double.infinity, // Takes the full width of the screen
      height: 50, // Set the height to 20
      margin: EdgeInsets.all(10.0), // Add margin
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 40, 40, 40), // Black background color
        borderRadius: BorderRadius.circular(10.0), // Add border radius
      ),
      child: const Center(
        child: Text(
          "1200 MXN",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  final Color color;

  CircleWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30, // Adjust the size of the circles as needed
      height: 30,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}