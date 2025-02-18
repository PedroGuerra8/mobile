import 'dart:io';

void main(){
  double valor;
  print("Digite o valor a ser convertido: ");
  valor = double.parse(stdin.readLineSync()!);
  String moeda;
  print("Digite a moeda a ser convertida: ");
  moeda = stdin.readLineSync()!;
  conversao(valor, moeda);
}

void conversao(valor, moeda){
  if (moeda == 'CHF'){
    moeda = valor * 4.35;
    print(moeda);
  };
  if (moeda == 'USD'){
    moeda = valor * 6.56;
    print(moeda);
  };
  if(moeda == 'EUR'){
    moeda = valor * 7;
    print(moeda);
  }else{
    print("Digite uma moeda válida na próxima vez");
  };
}