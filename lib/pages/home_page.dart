import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
        name: "Ultra Milk",
        price: 25000,
        quantity: 1000,
        shordesc: 'UltraMilk Coklat',
        description: "Ultra Milk ukuran 1000ml dengan rasa coklat",
        imagePath: "assets/utramilk.jpg"),
    Item(
        name: "Diamod Milk",
        price: 18000,
        quantity: 500,
        shordesc: 'Diamod Milk Full Cream',
        description: "Diamond Milk ukuran 1000ml dengan rasa full cream",
        imagePath: "assets/diamondmmilk.jpg"),
    Item(
        name: "Cimory Yogurt",
        price: 10000,
        quantity: 50,
        shordesc: 'Cimory Yogurt Aneka Rasa',
        description: "Cimory Yogurt",
        imagePath: "assets/cimorryyogurt.jpg"),
    Item(
        name: 'Ichi Ocha',
        price: 3000,
        quantity: 100,
        shordesc: 'Ichi Ocha Jasmine Tea',
        description:
            'Ichi Ocha dengan teh pilihan dipadukan dengan 2 bunga jasmine',
        imagePath: 'assets/ichi.jpg'),
    Item(
        name: 'ABC Coffe',
        price: 3000,
        quantity: 50,
        shordesc: 'ABC Coffe Susu',
        description:
            'ABC Coffe dengan rasa kopi yang dipadukan dengan susu murni',
        imagePath: 'assets/abckfee.jpg'),
    Item(
        name: 'IndoMilk Kaleng',
        price: 7000,
        quantity: 29,
        shordesc: 'Indomilk kaleng full cream',
        description: 'Susu steril ',
        imagePath: 'assets/indokaleng.jpg'),
    Item(
        name: 'Fruit Tea',
        price: 6000,
        quantity: 500,
        shordesc: 'Fruittea Sosro dengan aneka rasa',
        description:
            'Fruit Tea minuman tea dengan paduan beberapa buah-buahana yang membuat rasa jadi nikmat',
        imagePath: 'assets/fruittea.jpg'),
    Item(
        name: 'Fruit Tea',
        price: 6000,
        quantity: 500,
        shordesc: 'Fruittea Sosro dengan aneka rasa',
        description:
            'Fruit Tea minuman tea dengan paduan beberapa buah-buahana yang membuat rasa jadi nikmat',
        imagePath: 'assets/fruittea.jpg'),
    Item(
        name: 'Fruit Tea',
        price: 6000,
        quantity: 500,
        shordesc: 'Fruittea Sosro dengan aneka rasa',
        description:
            'Fruit Tea minuman tea dengan paduan beberapa buah-buahana yang membuat rasa jadi nikmat',
        imagePath: 'assets/fruittea.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Barang'),
        actions: [
          IconButton(
            onPressed: () {
              // Fungsi yang akan dijalankan saat ikon pencarian di klik
            },
            icon: Icon(Icons.search_outlined),
          ),
          IconButton(
            onPressed: () {
              // Fungsi yang akan dijalankan saat ikon notifikasi di klik
            },
            icon: Icon(Icons.notifications_outlined),
          ),
        ],
        backgroundColor: Colors.blue[700],
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              color: index % 2 == 0
                  ? Colors.blueAccent[100]
                  : Colors.greenAccent[100],
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Image.asset(
                        item.imagePath,
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            item.shordesc,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Rp.' + item.price.toString(),
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: Icon(Icons.live_tv_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
