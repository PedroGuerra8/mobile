import 'dart:io';

void main(){
  double nota1;
  print("Digite a primeira nota: ");
  nota1 = double.parse(stdin.readLineSync()!);
  double nota2;
  print("Digite a segunda nota: ");
  nota2 = double.parse(stdin.readLineSync()!);
  media(nota1, nota2);
}

void media(nota1, nota2){
  double nota_final = (nota1 + nota2) / 2;
  print(nota_final);
  if (nota_final >= 7){
    print("Aprovado!");
  }
  if(nota_final >= 4 && nota_final < 7){
    print("Exame!");
  } 
  if (nota_final < 4){
    print("Reprovado!");
  };
}