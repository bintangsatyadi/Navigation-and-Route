

import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute
        .of(context)!
        .settings
        .arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Item Detail'),
      ),
      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              itemArgs.imagePath,
              width: 400,
              height: 400,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20,),
            Text('${itemArgs.name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),textAlign: TextAlign.center,),
            SizedBox(height: 8,),
            Text('Item Name: ${itemArgs.name}',style: TextStyle(fontSize: 16),),
            SizedBox(height: 8),
            Text('Price: Rp. ${itemArgs.price.toString()}',style: TextStyle(fontSize: 16),),
            SizedBox(height: 8),
            Text('Quantity : ${itemArgs.quantity}',style: TextStyle(fontSize: 16),),
            SizedBox(height: 8,),
            Text('Description: ${itemArgs.description}',style: TextStyle(fontSize: 16),),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the HomePage
                Navigator.pop(context);
              },
              child: Text('Back to Shopping List'),
            ),
          ],
        ),
      ),
      )
    );
  }
}
