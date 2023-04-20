import 'package:cincailah/history.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class HistoryPage2 extends StatelessWidget {
  const HistoryPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff55951),
        centerTitle: true,
        title: const Text(
            'Recent History', style: TextStyle(color: Colors.black)),
        leading: InkWell(
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HistoryPage()),
            );
          },
          child: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GFListTile(
              avatar: Container(
                width: 150,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('images/5.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Yi He Feng (Food & Tea Cultural Center',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Sutera Area',
                    style: TextStyle(fontSize: 14),
                  ),
                  Row(
                    children: [
                      Icon(Icons.local_cafe),
                      const SizedBox(width: 5),
                      Text(
                        'Taiwan Restaurant',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              description: const Text(
                '15 Apr, 01:03',
                style: TextStyle(fontSize: 10),
              ),
            ),
            GFListTile(
              avatar: Container(
                width: 150,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('images/6.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dong Seoul Korea Restaurant',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Sutera Area',
                    style: TextStyle(fontSize: 14),
                  ),
                  Row(
                    children: [
                      Icon(Icons.restaurant),
                      const SizedBox(width: 5),
                      Text(
                        'Korea Restaurant',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              description: const Text('12 Apr,15:39',style: TextStyle(fontSize: 10),
              ),
            ),
            GFListTile(
              avatar: Container(
                width: 150,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('images/7.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Uncle Wang Food Court',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Sutera Area',
                    style: TextStyle(fontSize: 14),
                  ),
                  Row(
                    children: [
                      Icon(Icons.restaurant),
                      const SizedBox(width: 5),
                      Text(
                        'Food Court',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              description: const Text('08 Apr,14:14',style: TextStyle(fontSize: 10),
              ),
            ),
            GFListTile(
              avatar: Container(
                width: 150,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('images/8.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'D Laksa',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Sutera Area',
                    style: TextStyle(fontSize: 14),
                  ),
                  Row(
                    children: [
                      Icon(Icons.restaurant),
                      const SizedBox(width: 5),
                      Text(
                        'Malay Restaurant',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              description: const Text('02 Apr,12:18',style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
