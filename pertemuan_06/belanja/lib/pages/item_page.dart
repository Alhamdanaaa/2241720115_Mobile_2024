import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/footer.dart';
import 'package:flutter/material.dart';

import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:belanja/widgets/footer.dart'; // Pastikan ini sesuai dengan lokasi footer

class ItemPage extends StatelessWidget {
  final Item item;
  const ItemPage({Key? key, required this.item}) : super(key: key);
  // static const routeName = '/item';

  @override
  Widget build(BuildContext context) {
    // final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: 'hero-${item.name}',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  item.imagePath,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.headlineLarge?.color,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Rp${item.price}',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Stock: ${item.stock}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[700],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star_outlined, color: Colors.amber, size: 24),
                      const SizedBox(width: 5),
                      Text(
                        '${item.rating}',
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Footer(), // Footer di bagian bawah
          ],
        ),
      ),
    );
  }
}
