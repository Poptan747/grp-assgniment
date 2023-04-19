import 'package:flutter/material.dart';
import 'home.dart';
import 'package:getwidget/getwidget.dart';

//import 'package:carousel_slider/carousel_slider.dart';
//import 'package:coverflow/coverflow.dart';

List <String> imageList = [
  'images/chart1.jpg',
  'images/chart2.jpg',
  'images/chart3.jpg',
  'images/chart4.jpg',
  'images/chart5.jpg',
];

List <Map<String,dynamic>> imageItem = [

  {'path': 'images/restaurant/restaurant1.jpg', 'text': 'TOAST'},
  {'path': 'images/restaurant/restaurant2.jpg', 'text': 'SUBWAY'},
  {'path': 'images/restaurant/restaurant3.jpg', 'text': 'NEWYORK BISTRO'},
  {'path': 'images/restaurant/restaurant4.jpg', 'text': 'MCDONALDS'},
  {'path': 'images/restaurant/restaurant5.jpg', 'text': 'LIGHT CAFE'},
  {'path': 'images/restaurant/restaurant6.jpg', 'text': 'WOODEN REST'},
  {'path': 'images/restaurant/restaurant7.jpg', 'text': 'FIRE WOOD'},
  {'path': 'images/restaurant/restaurant8.jpg', 'text': 'KOREA STYLE'},

];

class Chart extends StatelessWidget {
  const Chart ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GroupProject',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Charts"),
        centerTitle: true,
        leading:
        IconButton(onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context)=>HomePage()),
          );
        },
            icon:Icon(Icons.arrow_back_rounded)

        ),

      ),

      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GFCarousel(
                items: imageList.map(
                      (image) {
                    return Container(
                      margin: EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                            width: 1000.0
                        ),
                      ),
                    );
                  },
                ).toList(),
                onPageChanged: (index) {
                  setState(() {
                    index;
                  });
                },
              ),

              Padding(padding: EdgeInsets.only(left:15, bottom:5, right: 20, top:35),
                child:Text('Most Popular Restaurant >>>',
                  style: TextStyle(color: Colors.purple, fontSize: 15, fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              GFItemsCarousel(
                rowCount: 3,
                children: imageItem.map(
                      (item) {
                    return Column(
                        children:[
                          Container(
                            margin: EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              child:
                              Image.asset(item['path'], fit: BoxFit.cover, height: 175),

                            ),
                          ),
                          Text(
                            item['text'],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]
                    );
                  },
                ).toList(),
              ),

              Padding(padding: EdgeInsets.only(left:15, bottom:5, right: 20, top:35),
                child:Text('Others Restaurant >>>',
                  style: TextStyle(color: Colors.purple, fontSize: 15, fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GFItemsCarousel(
                rowCount: 3,
                children: imageItem.map(
                      (item) {
                    return Column(
                        children:[
                          Container(
                            margin: EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              child:
                              Image.asset(item['path'], fit: BoxFit.cover, height: 175),

                            ),
                          ),
                          Text(
                            item['text'],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]
                    );
                  },
                ).toList(),
              ),
            ]
        ),
      ),
    );
  }
}