import 'dart:io';

void main() {
  double bruto;
  print("Digite seu salário bruto: ");
  bruto = double.parse(stdin.readLineSync()!);
  
  // Chama a função calcular passando o salário bruto
  calcular(bruto);
}

void calcular(double bruto) {
  // Calcula os impostos (10%) e a bonificação (20%)
  double impostos = bruto * 0.1;
  double bonus = bruto * 0.2;

  // Calcula o salário líquido
  double salarioLiquido = bruto - impostos + bonus;

  // Exibe o salário líquido
  print("Seu salário líquido é: R\$ $salarioLiquido");
}
