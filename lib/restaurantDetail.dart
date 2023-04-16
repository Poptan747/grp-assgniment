import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'home.dart';

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
            image: AssetImage('mcd1.jpg'),
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
                      Text("McDonald's",style: TextStyle(color: Colors.white, fontSize: 30, height: 1.2, fontWeight: FontWeight.bold)
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
                              text: "Fast food",
                              shape: GFButtonShape.pills,
                              icon: Icon(Icons.fastfood,size: 15,color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            GFRating(
                              value: 3.5,
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
                      Text("McDonald's (MCD) is a fast-food company that operates and franchises a chain of restaurants worldwide, serving burgers, fries, chicken, and other popular fast food items.", style: TextStyle(color: Colors.white.withOpacity(.7), height: 1.9, fontSize: 15),),
                      GFButton(
                          onPressed: (){},
                          shape: GFButtonShape.pills,
                          color: Colors.black,
                          icon: Icon(Icons.location_on,size: 15,color: Colors.white),
                          text: 'Location - Setia Tropika', textColor: Colors.white,
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
