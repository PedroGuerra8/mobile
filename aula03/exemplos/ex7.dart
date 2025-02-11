/*
Exemplo funcao 
12.02.2025
*/
import 'dart:io';
// void main funcao principal do codigo
void main(){
  print("Digite seu nome");
  String nome = stdin.readLineSync()!;
  saudar(nome);
}
//funcao do tipo void
void saudar(String nome){
  print("Ola $nome ! Bem vindo");
}