// Crie uma função que calcule o salário líquido do usuário 
// a partir dos valores digitados pelo teclado considerando um desconto de 10% de
// impostos e bonificação de 20% em cima do salário.

import 'dart:io';

void main(){
  double salario, bruto, impostos, bonus;
  print("Digite seu salário bruto: ");
  bruto = double.parse(stdin.readLineSync()!);
  impostos = bruto * 0.1;
  bonus = bruto * 0.2;
  salario = bruto - impostos + bonus;
  print(salario);
}