import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item items;
  const ItemWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const StadiumBorder(),
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(items.image)),
        title: Text(items.name),
        subtitle: Text(items.desc),
        trailing: Text(
          "\$${items.price}",
          textScaleFactor: 1.5,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
