import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

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
      appBar: AppBar(
        backgroundColor: Color(0x0ffffffff),
        centerTitle: true,
        title: (Text('Cincai lah~',
            style: TextStyle(color: Colors.black,fontFamily: 'DancingScript', fontSize: 40),
        )),
        leading: Icon(Icons.menu_book, color: Color(0xfff55951)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.storefront, color: Color(0xfff55951)),
          )
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
                onTap: ()=> this.setState(() {
                  if (_animate == false){
                    _animate = true;
                    chgMessage();
                  }
                }),
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
            SizedBox(height: 20,),
            AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 700),
              child: Text(_msg,
                style: TextStyle(color: Colors.black, fontSize: 15),
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
      Future.delayed(Duration(seconds: 6), (){
        setState(() {
          _msg = "Collection completed!";
        });
      });
      Future.delayed(Duration(seconds: 9), (){
        setState(() {
          _msg = "Choosing one for you~";
        });
      });
    });
  }
}


