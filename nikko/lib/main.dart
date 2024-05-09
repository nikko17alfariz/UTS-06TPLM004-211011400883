import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final List<ItemDetail> itemDetails = const [
    ItemDetail(
      title: 'Nike Zoom Blazzer Mid Premium',
      subtitle: 'Mens',
      price: '\$200',
      imagePath: 'assets/image/1.png',
      color: Color.fromARGB(255, 215, 162, 255),
    ),
    ItemDetail(
      title: 'Nike Air Zoom',
      subtitle: 'Mens',
      price: '\$150',
      imagePath: 'assets/image/2.png',
      color: Color.fromARGB(255, 154, 205, 247),
    ),
    ItemDetail(
      title: 'Nike ZoomX Vaporly',
      subtitle: 'Mens',
      price: '\$180',
      imagePath: 'assets/image/3.png',
      color: Color.fromARGB(255, 255, 145, 220),
    ),
    ItemDetail(
      title: 'Nike Air Force 1S50',
      subtitle: 'Vintage',
      price: '\$160',
      imagePath: 'assets/image/4.png',
      color: Color.fromARGB(255, 255, 222, 173),
    ),
    ItemDetail(
      title: 'Nike Waffle One',
      subtitle: 'Vintage',
      price: '\$170',
      imagePath: 'assets/image/5.png',
      color: Color.fromARGB(255, 255, 159, 152),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS-NikkoAlfarizki-211011400883',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'SepatuinAja',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: itemDetails.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Container(
                width: 400,
                height: 200,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: itemDetails[index].color,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            itemDetails[index].title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            itemDetails[index].subtitle,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 16,
                      bottom: 16,
                      child: Text(
                        itemDetails[index].price,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 16,
                      top: 1,
                      child: Transform.rotate(
                        angle: -0.20, // Sudut rotasi sedikit miring ke kiri
                        child: Image.network(
                          itemDetails[index].imagePath,
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ItemDetail {
  final String title;
  final String subtitle;
  final String price;
  final String imagePath;
  final Color color;

  const ItemDetail({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
    required this.color,
  });
}
