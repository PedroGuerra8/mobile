import 'dart:io';

void main(){
  int idade1;
  print("Digite a idade de sua mãe: ");
  idade1 = int.parse(stdin.readLineSync()!);
  int idade2;
  print("Digite a idade de seu pai: ");
  idade2 = int.parse(stdin.readLineSync()!);
  mais_velho(idade1, idade2);
}

void mais_velho(idade1, idade2){
  if (idade1 > idade2){
    print("Sua mãe é mais velha que seu pai!");
  }
  if (idade2 > idade1){
    print("Seu pai é mais velho que sua mãe!");
  }
  if (idade1 == idade2){
    print("Seus pais tem a mesma idade!");
  }
}

