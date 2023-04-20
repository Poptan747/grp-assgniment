import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:math';
import 'home.dart';


List <Map<String,dynamic>> restaurantItem = [

  {'path': 'assets/foodcourt3.jpg', 'restaurantName': "Uncle Wang FoodCourt", 'restaurantCategory': "Food Court" , 'restaurantDesc': "A food court is a large, indoor or outdoor dining area with multiple food stalls or restaurants, offering a variety of cuisines and dishes in a convenient and communal setting.", 'location': 'Location - Taman Sutera', 'rating': 3.0},
  {'path': 'assets/cafe2.jpg', 'restaurantName': "Journey Dot Com", 'restaurantCategory': "Cafe" , 'restaurantDesc': "A cafe is a charming and inviting eatery that offers a comfortable and laid-back ambiance for customers to enjoy delicious coffee and light meals while socializing, working, or simply relaxing.", 'location': 'Location - Impian Emas', 'rating': 5.0},
  {'path': 'assets/mcd1.jpg', 'restaurantName': "McDonald's", 'restaurantCategory': "Fast food" , 'restaurantDesc': "McDonald's (MCD) is a fast-food company that operates and franchises a chain of restaurants worldwide, serving burgers, fries, chicken, and other popular fast food items.", 'location': 'Location - Setia Tropika', 'rating': 4.0}
];

int pos = Random().nextInt(3);

String imagePath = restaurantItem[pos]['path'];
String restaurantName = restaurantItem[pos]['restaurantName'];
String restaurantCategory = restaurantItem[pos]['restaurantCategory'];
String restaurantDesc = restaurantItem[pos]['restaurantDesc'];
String restaurantLocation = restaurantItem[pos]['location'];
double restaurantRating = restaurantItem[pos]['rating'];

Icon chgIcon(){
  switch (restaurantCategory) {
    case 'Fast food':
      return Icon(Icons.fastfood,size: 15,color: Colors.white);
    case 'Cafe':
      return Icon(Icons.coffee,size: 15,color: Colors.white);
    case 'Food Court':
      return Icon(Icons.storefront,size: 15,color: Colors.white);
    default :
      return Icon(Icons.restaurant,size: 15,color: Colors.white);
  }
}
class RestaurantDetailPage extends StatelessWidget {
  const RestaurantDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context)=>HomePage()),
          );
          },
          icon:Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.4,0.9],
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.2)
              ]
            )
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  //make it full size
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(restaurantName,style: TextStyle(color: Colors.white, fontSize: 30, height: 1.2, fontWeight: FontWeight.bold)
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          children: [
                            GFButton(
                              onPressed: (){},
                              color: Colors.black,
                              text: restaurantCategory,
                              shape: GFButtonShape.pills,
                              icon: chgIcon(),
                            ),
                            SizedBox(width: 10),
                            GFRating(
                              value: restaurantRating,
                              size: 20,
                              color: Colors.yellow,
                              borderColor: Colors.white,
                              allowHalfRating: true,
                              halfFilledIcon: Icon(Icons.star_half),
                              onChanged: (value) {
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(restaurantDesc, style: TextStyle(color: Colors.white.withOpacity(.7), height: 1.9, fontSize: 15),),
                      GFButton(
                          onPressed: (){},
                          shape: GFButtonShape.pills,
                          color: Colors.black,
                          icon: Icon(Icons.location_on,size: 15,color: Colors.white),
                          text: restaurantLocation, textColor: Colors.white,
                      ),
                    ], //'Location - Setia Tropika',style: TextStyle(color: Colors.white.withOpacity(.7), height: 1.9, fontSize: 15
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
