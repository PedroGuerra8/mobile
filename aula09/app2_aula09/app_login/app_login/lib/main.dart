import 'package:app_login/tela2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController senha = TextEditingController();

  // cria função para verificar o usuario e fazer o login

  _verificalogin(){
    if(user.text=="Senai" && senha.text=="2025"){
      //Chama a segunda tela

      Navigator.push(context, MaterialPageRoute(
        builder: (context) =>Tela2()));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login incorreto"),
        duration: Duration(seconds: 5),));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200, height: 200,
              color: Colors.grey,
              child: Image.asset('assets/images/pedro.jpg'),
            ),
            SizedBox(
              width: 250,
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    // permite apenas números
                    decoration: InputDecoration(
                      labelText: "Digite seu usuario",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                    ),
                    controller: user,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    // permite apenas números
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    maxLength: 4, // limita o numero de caracteres
                    decoration: InputDecoration(
                      labelText: "Digite sua senha",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                    ),
                    // permite esconder a senha quando o usuario esta digitando
                    obscureText: true,
                    obscuringCharacter: "*",
                    controller: senha,
                  )
                ],
              ),
            ),
            ElevatedButton(onPressed: _verificalogin, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}