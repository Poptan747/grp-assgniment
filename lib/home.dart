import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'store.dart';
import 'restaurantDetail.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool _animate = false;
bool _visible = false;
String _msg ="Collecting nearby location~";

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: (Text('Cincai lah~',
            style: TextStyle(color: Colors.black,fontFamily: 'DancingScript', fontSize: 40),
        )),
        leading: Icon(Icons.menu_book, color: Color(0xfff55951)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child:IconButton(onPressed: (){

              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Chart()),
              );
          },
            icon:Icon(Icons.storefront, color: Color(0xfff55951)),
          )
          ),
        ],
      ),
      backgroundColor: Color(0x0ffffffff),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Tap to find nearby restaurant!',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 40),
            AvatarGlow(
              endRadius: 200,
              animate: _animate,
              glowColor: Colors.redAccent,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: ()=> chgMessage(),
                child: Material(
                  shape: CircleBorder(),
                  elevation: 8,
                  child: Container(
                    padding: EdgeInsets.all(40),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xfff55951)
                    ),
                    child: Icon(Icons.local_dining,size: 80, color: Colors.white),
                  ),
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 700),
              child: SizedBox(
                height: 28,
                child: AnimatedTextKit(
                  pause: Duration(seconds: 1),
                  repeatForever: true,
                  animatedTexts: [
                    ScaleAnimatedText(_msg, textStyle: TextStyle(fontSize: 20, color: Colors.black)),
                    ScaleAnimatedText(_msg, textStyle: TextStyle(fontSize: 20, color: Colors.black)),
                    ScaleAnimatedText(_msg, textStyle: TextStyle(fontSize: 20, color: Colors.black))
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
  void chgMessage(){
    setState(() {
      _visible = !_visible;

      if (_animate == false){
        _animate = true;
      }

      Future.delayed(Duration(seconds: 6), (){
        setState(() {
          _msg = "Collection completed!";
        });
      });
      Future.delayed(Duration(seconds: 9), (){
        setState(() {
          _msg = "Choosing one for you~   ";
        });
      });
      Future.delayed(Duration(seconds: 12), (){
        setState(() {
          _animate = false;
          _visible = !_visible;
          _msg ="Collecting nearby location~";
          Navigator.push(context,
            MaterialPageRoute(builder: (context)=>RestaurantDetailPage()),
          );
        });
      });

    });
  }
}


