import 'dart:io';

void main(){
  print("Digite seu nome");
  String nome = stdin.readLineSync()!;
  print("Digite seu curso");
  String curso = stdin.readLineSync()!;
  print("Digite sua idade");
  int idade = int.parse(stdin.readLineSync()!);
  pessoa(nome, curso, idade);
}

void pessoa(String nome, curso, idade){
  print(nome);
  print(curso);
  print(idade);
}