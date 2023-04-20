import 'package:flutter/material.dart';
import 'package:flutter_application_carrot/detail_page.dart';
import 'carrot_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<CarrotItem> items = [];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(CarrotItem(title: '파자팝니다', addr: '성남시 중원구', price: 1000000));
    items.add(CarrotItem(title: '정묵팝니다', addr: '성남시 중원구', price: 1));
    items.add(CarrotItem(title: '묵정팝니다', addr: '성남시 중원구', price: 10));
    return MaterialApp(
      home: HomePage(items: items),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.items,
  });

  final List<CarrotItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('jh_market'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var item in items)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPage(
                                  price: item.price,
                                )));
                  },
                  child: item)
          ],
        ),
      ),
    );
  }
}
