import 'package:belanja/models/item.dart';
import 'package:belanja/Widgets/item_card.dart'; 
import 'package:belanja/Widgets/footer.dart'; 
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Selamat datang di Aplikasi Belanja!',
//         style: TextStyle(fontSize: 24, color: Colors.white),
//       ),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item('Sugar', 5000, 'images/sugar.jpg', 5, 4.5),
    Item('Salt', 2000, 'images/salt.jpg', 7, 4.4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List Alhamdana/2241720115'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2 / 3, // Atur rasio tampilan item
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    context.push('/item', extra: item); // Navigasi menggunakan go_router
                  },
                  child: ItemCard(item: item),
                );
                // return ItemCard(item: item); // Panggil ItemCard di sini
              },
            ),
          ),
          Footer(), // Letakkan footer di bagian bawah halaman
        ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor, 
    );
  }
}
