import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout Alhamdana';
    return MaterialApp(
        title: appTitle,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tugas Praktikum 1 (Alhamdana Fariz A./2241720115)'),
            backgroundColor: Colors.green,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left Column: All Text Content
                Expanded(
                  flex: 1, // 1/3 of the screen for the text
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center, 
                    children: [
                      // Title Section
                      Text(
                        'Strawberry Pavlova',
                        textAlign: TextAlign.center, 
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),

                      // Description Section
                      Text(
                        'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                        'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                        textAlign: TextAlign.center, 
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 16.0),

                      // Ratings Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.red),
                          Icon(Icons.star, color: Colors.red),
                          Icon(Icons.star, color: Colors.red),
                          Icon(Icons.star, color: Colors.red),
                          Icon(Icons.star_half, color: Colors.red),
                          SizedBox(width: 8.0),
                          Text('170 Reviews', style: TextStyle(fontSize: 16.0)),
                        ],
                      ),
                      SizedBox(height: 16.0),

                      // Info Section (Prep Time, Cook Time, Feeds)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Spacing between columns
                        children: [
                          Column(
                            children: [
                              Icon(Icons.kitchen, color: Colors.green),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Text(
                                    'PREP:',
                                    textAlign: TextAlign.center, 
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('25 min',
                                      textAlign: TextAlign.center), 
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.timer, color: Colors.green),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Text(
                                    'COOK:',
                                    textAlign: TextAlign.center, 
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('1 hr',
                                  textAlign: TextAlign.center),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.restaurant, color: Colors.green),
                              SizedBox(height: 4.0),
                              Row(
                                children: [
                                  Text(
                                    'FEEDS:',
                                    textAlign: TextAlign.center, 
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('4-6',
                                  textAlign: TextAlign.center),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                    ],
                  ),
                ),

                // Right Column: Image
                Expanded(
                  flex: 2, // 2/3 of the screen for the image
                  child: Image.asset(
                    'images/strawberry_pavlova.jpg',
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}


// InfoTile Widget to display each info section (Prep, Cook, Feeds)
class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  InfoTile({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.green),
        SizedBox(height: 4.0),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value),
      ],
    );
  }
}
