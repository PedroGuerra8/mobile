//Crie uma função que calcule a área de um triângulo 
//a partir de dados digitados pelo usuário. A = (b* h)/2 e retorne esse valor

import 'dart:io';

void main(){
  double altura, base, res;
  print("Digite o tamanho em centimetros da altura do triangulo");
  altura = double.parse(stdin.readLineSync()!);
  print("Digite o tamanho em centimetros da base do triangulo");
  base = double.parse(stdin.readLineSync()!);
  calcular(altura, base);
}

void calcular(double altura, double base){
  double res = (base*altura)/2;
  print("A base do triangulo é $res cm²");
}
