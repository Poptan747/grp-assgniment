import 'package:flutter/material.dart';
import 'home.dart';
import 'package:getwidget/getwidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:coverflow/coverflow.dart';

List<String> imageList = [
  "https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg",
  "https://www.barrymorganphotography.com/img/blogs/931-099-Edit.jpg",
  "https://c.ndtvimg.com/2021-04/umk8i7ko_pasta_625x300_01_April_21.jpg?im=FaceCrop,algorithm=dnn,width=1200,height=886",
  "https://www.mistay.in/travel-blog/content/images/2020/06/andhra-cuisine-cover-2.jpg",
  "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?cs=srgb&dl=pexels-ash-376464.jpg&fm=jpg",
];

List <String> imageItem = [

  "https://upload.wikimedia.org/wikipedia/commons/6/62/Barbieri_-_ViaSophia25668.jpg"
  "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudHxlbnwwfHwwfHw%3D&w=1000&q=80"
  "https://assets.bonappetit.com/photos/610aa6ddc50e2f9f7c42f7f8/16:9/w_2560%2Cc_limit/Savage-2019-top-50-busy-restaurant.jpg"
  "https://blog.koelntourismus.de/wp-content/uploads/2019/12/Header.jpg"
  "https://nhahangso.cdn.vccloud.vn/wp-content/uploads/2022/09/muc-tieu-cua-mcdonalds.webp"
  "https://imageio.forbes.com/specials-images/imageserve/5ebb512b9144ca0006f205b1/A-Subway-restaurant/960x0.jpg?format=jpg&width=960"
  "https://i.pinimg.com/originals/3a/7d/8f/3a7d8f351db0067d0691da7468998ef3.jpg"
  "https://lh5.ggpht.com/7Ew4YHx5_3XTWi0fTQijnrezSFAEEd3IeR9xZsp-7TBL6KjGAan6r_xmHWogYiMUF-Q4sP3JZeJh458IFh_NAeQ7=s800"

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
              (url) {
            return Container(
              margin: EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Image.network(
                    url,
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
                  (url) {
                return Container(
                  margin: EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child:
                    Image.network(url, fit: BoxFit.cover, width: 1000.0),
                  ),
                );
              },
            ).toList(),
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
                  (url) {
                return Container(
                  margin: EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child:
                    Image.network(url, fit: BoxFit.cover, width: 1000.0),
                  ),
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
