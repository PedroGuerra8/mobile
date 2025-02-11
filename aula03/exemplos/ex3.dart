/* exemplo 3 - calculando a soma ou divisao de dois numeros
12.02.2025
*/
import 'dart:io';

void main(){
  double n1, n2, res; // variavel para armazenar os valores digitados pelo usuario
  var op; // variavel para armazenar a opcao do usuario
  print(' + -> SOMA');
  print(' - -> SUBTRACAO');
  print(' * -> MULTIPLICACAO');
  print(' / -> DIVISAO');
  print("Digite o numero n1 ");
  n1 = double.parse(stdin.readLineSync()!);
  print("Digite o numero n2 ");
  n2 = double.parse(stdin.readLineSync()!);
  print("Digite a operação desejada ");
  op = stdin.readLineSync()!;
  switch(op){
    case '+':
    res = n1+n2;
    print("Resultado $res");
    break;
    case '/':
    if(n2!=0){
      res = n1/n2;
      print("Resultado $res");
    }
    else{
      print("Divisão por zero tende ao infinito, \n digite outro valor para n2");
    }

    break;
    default: print("Operação inválida.");

  }
}