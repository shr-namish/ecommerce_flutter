import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
    //  search bar
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Search", style: TextStyle(color: Colors.grey),),
              Icon(Icons.search, color: Colors.grey,),
            ],
          ),
        ),

    //  message
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Text("Everyone files.. some fly longer than others", style: TextStyle(color: Colors.grey[600]),),
      ),

    //  hotpicks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text("Hot Picks 🔥", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24 )),
              Text("See All", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue ))
            ],
          ),
        ),
        const SizedBox(height: 10,),

        Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              //create a shoe
              Shoe shoe = Shoe(
                  name: 'Jordan',
                  price: '222',
                  imagePath: 'lib/images/1.jpg',
                  description: 'cool shoe'
              );
              return ShoeTile(shoe: shoe);
            },) )

    ]);
  }
}
