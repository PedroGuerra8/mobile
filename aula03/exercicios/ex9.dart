import 'dart:io';

void main(){
  double KWh;
  print("Qual foi a quantidade de KWh consumida esse mês? ");
  KWh = double.parse(stdin.readLineSync()!);
  String instalacao;
  print("Digite o tipo de instalação: ");
  instalacao = stdin.readLineSync()!;
  conta(KWh, instalacao);
}

void conta(KWh, instalacao){
  double total;
  if (instalacao == 'Residencial'){
    if (KWh > 500){
      total = KWh * 0.7;
      print(total);
    }else{
      total = KWh * 0.5;
      print(total);
    }
  };
  if (instalacao == 'Comercial'){
    if (KWh > 1000){
      total = KWh * 0.6;
      print(total);
    }else{
      total = KWh * 0.65;
      print(total);
    }
  };
  if (instalacao == 'Industrial'){
    if (KWh > 5000){
      total = KWh * 0.5;
      print(total);
    }else{
      total = KWh * 0.55;
      print(total);
    }
  };
  }
