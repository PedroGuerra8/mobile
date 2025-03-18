// biblioteca material que vai permitir a criação dos widgets para o Flutter no Android
import 'package:flutter/material.dart';

void main() {
  // função que constroi o app chamando a classe do tipo Stateless
  runApp(App_07());
}

class App_07 extends StatelessWidget {
  const App_07({super.key});

  // override polimorfismo, permite tratar objetos de diferentes formas
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                // Container com bordas arredondadas
                Container(
                  width: 200, 
                  height: 80, 
                  decoration: BoxDecoration(
                    color: Colors.white, // Adicionando a cor dentro de BoxDecoration
                    borderRadius: BorderRadius.circular(20), // Borda arredondada
                  ),
                ),
                Container(
                  width: 100, 
                  height: 38, 
                  decoration: BoxDecoration(
                    color: Colors.blue, // Adicionando a cor dentro de BoxDecoration
                    borderRadius: BorderRadius.circular(10), // Borda arredondada
                  ),
                  child: Text(
                    "Senai", 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
