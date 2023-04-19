import 'package:cincailah/history2.dart';
import 'package:cincailah/home.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff55951),
        centerTitle: true,
        title: const Text('Library', style: TextStyle(color: Colors.black)),
        leading: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          child: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: InkWell(
                          child: Container(
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 16.0),
                                      child: Icon(
                                        Icons.history,
                                        size: 50,
                                        color: Color(0xfff55951),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text('History Count : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left:16.0),
                                      child: Text(' 15',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xfff55951))),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HistoryPage2()),
                          );
                        },
                        child: Expanded(
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                            ),
                            child: const Center(
                              child: Text('Recent History',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildImageContainer(context, 'images/1.jpg', 'SheKee Sarawak Kolo Mee'),
                      _buildImageContainer(context, 'images/2.jpg', 'Hari Hari Nanyang Kopitiam'),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildImageContainer(context, 'images/3.jpg', 'Restoran Lemon Tree'),
                      _buildImageContainer(context, 'images/4.jpg', 'Restoran Hong Sheng Best'),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildImageContainer(BuildContext context, String imagePath, String title) {
    return Expanded(
      child: Container(
        height: 270,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black54,
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}