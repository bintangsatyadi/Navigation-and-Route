import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: "Ultra Milk",
        price: 25000,
        quantity: 1000,
        description: "Ultra Milk ukuran 1000ml dengan rasa coklat",
        imagePath: "assets/utramilk.jpg"),
    Item(
        name: "Diamod Milk",
        price: 18000,
        quantity: 500,
        description: "Diamond Milk ukuran 1000ml dengan rasa full cream",
        imagePath: "assets/diamondmmilk.jpg"),
    Item(
        name: "Cimory Yogurt",
        price: 1000,
        quantity: 50,
        description: "Cimory Yogurt",
        imagePath: "assets/cimorryyogurt.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Barang'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              color: index % 2 == 0 ? Colors.blue[100] : Colors.green[100],
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  child:Row(
                    children: [

                          Image.asset(
                            item.imagePath,
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(width: 8),
                          Expanded(child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.name,style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(
                                item.price.toString(),
                                textAlign: TextAlign.end,
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
    );
  }
}
