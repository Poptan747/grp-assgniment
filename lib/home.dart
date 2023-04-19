import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'history.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x0ffffffff),
        centerTitle: true,
        title: (const Text('text',style: TextStyle(color: Colors.black))),
        leading: InkWell(
            onTap: (){
              Navigator.push(context,  MaterialPageRoute(builder: (context) => const HistoryPage()),
              );
            },

            child: const Icon(Icons.menu_book, color: Color(0xfff55951))),
        actions: const [
          Icon(Icons.storefront, color: Color(0xfff55951))
        ],
      ),
      backgroundColor: const Color(0x0ffffffff),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Tap to find nearby restaurant!',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            const SizedBox(height: 40),
            AvatarGlow(
              endRadius: 200,
              animate: true,
              glowColor: Colors.redAccent,
              child: GestureDetector(
                onTap: ()=> print('tapped'),
                child: Material(
                  shape: const CircleBorder(),
                  elevation: 8,
                  child: Container(
                    padding: const EdgeInsets.all(40),
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xfff55951)
                    ),
                    child: const Icon(Icons.local_dining,size: 80,),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


