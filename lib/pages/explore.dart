import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final List<Map<String, dynamic>> items = [
    {
      'image': 'assets/Wavy_Lst-21_Single-01.jpg',
      'description': 'Health Support',
      'page': const ItemPage(title: 'Item 1 Page', content: 'Details about Item 1')
    },
    {
      'image': 'assets/9735917-removebg-preview.png',
      'description': 'Labour',
      'page': const ItemPage(title: 'Item 2 Page', content: 'Details about Item 2')
    },
    {
      'image': 'assets/8962299-removebg-preview.png',
      'description': 'Event Management',
      'page': const ItemPage(title: 'Item 3 Page', content: 'Details about Item 3')
    },
    {
      'image': 'assets/4294649-removebg-preview.png',
      'description': 'Moving Services',
      'page': const ItemPage(title: 'Item 4 Page', content: 'Details about Item 4')
    },
  ];

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = MediaQuery.of(context).size.width > 800 ? 4 : MediaQuery.of(context).size.width > 600 ? 3 : 2;
    double fontSize = MediaQuery.of(context).size.width > 600 ? 20 : 16;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 29, 28, 28),
        title: Text(
          'Explore',
          style: GoogleFonts.oxanium(color: Colors.white, fontSize: fontSize + 12, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 29, 28, 28),
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 12.0,
            crossAxisSpacing: 12.0,
            childAspectRatio: 3 / 4,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => item['page'],
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 92, 90, 90),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 6,
                      offset: const Offset(2, 4),
                    ),
                  ],
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double imageHeight = constraints.maxHeight * 0.6;
                    double textFontSize = fontSize * 0.8;

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            item['image'],
                            height: imageHeight,
                            width: constraints.maxWidth * 0.9,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item['description'],
                          style: GoogleFonts.oxanium(
                            fontSize: textFontSize,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ItemPage extends StatelessWidget {
  final String title;
  final String content;

  const ItemPage({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width > 600 ? 24 : 18;

    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: GoogleFonts.oxanium(fontSize: fontSize)),
      ),
      body: Center(
        child: Text(
          content,
          style: GoogleFonts.oxanium(fontSize: fontSize),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
