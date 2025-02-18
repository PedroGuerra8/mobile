import 'dart:io';

void main(){
  String combustivel;
  print("Digite qual o tipo de combustivel: ");
  combustivel = stdin.readLineSync()!;
  double litros;
  print("Qual a quantidade de litros desejada: ");
  litros = double.parse(stdin.readLineSync()!);
  abastecer(combustivel, litros);
}

void abastecer(combustivel, litros){
  double valor;
  double desconto;
  if (combustivel == 'Etanol'){
    if (litros >= 15){
      desconto = 1.7 * 0.04 * litros;
      valor = 1.7 * litros - desconto;
      print(valor);
    }else{
      desconto = 1.7 * 0.03 * litros;
      valor = 1.7 * litros - desconto;
      print(valor);
    }
  };
  if (combustivel == 'Diesel'){
    if (litros >= 15){
      desconto = 2 * 0.05 * litros;
      valor = litros * 2 - desconto;
      print(valor);
    }else{
      desconto = 2 * 0.03 * litros;
      valor = litros * 2 - desconto;
      print(valor);
    }
  };
  if (combustivel == 'Gasolina'){
    if (litros >= 20){
      desconto = 4.5 * 0.03 * litros;
      valor = litros * 4.5 - desconto;
      print(valor);
    }else{
      valor = 4.5 * litros;
      print(valor);
    }
  }
}