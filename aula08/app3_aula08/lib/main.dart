import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaApp(
    ),
  ));
}


class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicativo Teste"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.star,color: Colors.yellow,size:50,),
              Icon(Icons.favorite,color: Colors.red,size: 50,),
              Icon(Icons.thumb_up,color: Colors.blue,size: 50,),
            ],
          ),
          // Sizebox adiciona espaçamento para separar os elementos
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 700,
                  color: Colors.blueGrey,
                ),
                Container(
                  
                )
              ],
            ),)
        ],
      ),
    );
  }
}