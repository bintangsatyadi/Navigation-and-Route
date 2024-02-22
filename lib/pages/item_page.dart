import 'dart:ffi';

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
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${itemArgs.name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
            Text('Item Name: ${itemArgs.name}'),
            SizedBox(height: 8),
            Text('Price: ${itemArgs.price}'),
            SizedBox(height: 8),
            Text('Description: ${itemArgs.description}'),
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
    );
  }
}
