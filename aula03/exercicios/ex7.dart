import 'dart:io';

void main() {
  // Leitura dos valores médios dos três modelos de carro
  print("Digite o valor médio do primeiro modelo de carro: ");
  double modelo1 = double.parse(stdin.readLineSync()!);
  
  print("Digite o valor médio do segundo modelo de carro: ");
  double modelo2 = double.parse(stdin.readLineSync()!);
  
  print("Digite o valor médio do terceiro modelo de carro: ");
  double modelo3 = double.parse(stdin.readLineSync()!);


  carro(modelo1, modelo2, modelo3);
}

void carro(modelo1, modelo2, modelo3){
    // Inicializando as variáveis para armazenar o modelo mais caro e o mais barato
  double maisCaro = modelo1;
  double maisBarato = modelo1;
  String modeloMaisCaro = "Modelo 1";
  String modeloMaisBarato = "Modelo 1";

    // Comparando os valores para achar o mais caro e o mais barato
  if (modelo2 > maisCaro) {
    maisCaro = modelo2;
    modeloMaisCaro = "Modelo 2";
  }
  if (modelo3 > maisCaro) {
    maisCaro = modelo3;
    modeloMaisCaro = "Modelo 3";
  }

  if (modelo2 < maisBarato) {
    maisBarato = modelo2;
    modeloMaisBarato = "Modelo 2";
  }
  if (modelo3 < maisBarato) {
    maisBarato = modelo3;
    modeloMaisBarato = "Modelo 3";
  }

  // Exibindo os resultados
  print("O modelo mais caro é o $modeloMaisCaro, com valor de R\$$maisCaro");
  print("O modelo mais barato é o $modeloMaisBarato, com valor de R\$$maisBarato");
}

/* OUTRO MODO
import 'dart:io';

void main() {
  // Leitura dos valores médios dos três modelos de carro
  print("Digite o valor médio do primeiro modelo de carro: ");
  double modelo1 = double.parse(stdin.readLineSync()!);
  
  print("Digite o valor médio do segundo modelo de carro: ");
  double modelo2 = double.parse(stdin.readLineSync()!);
  
  print("Digite o valor médio do terceiro modelo de carro: ");
  double modelo3 = double.parse(stdin.readLineSync()!);

  // Colocando os valores em uma lista
  List<double> valores = [modelo1, modelo2, modelo3];
  
  // Ordenando a lista em ordem crescente
  valores.sort();

  // O primeiro valor da lista será o mais barato e o último o mais caro
  double maisBarato = valores.first;
  double maisCaro = valores.last;

  // Exibindo os resultados
  print("O modelo mais barato tem o valor de R\$${maisBarato.toStringAsFixed(2)}");
  print("O modelo mais caro tem o valor de R\$${maisCaro.toStringAsFixed(2)}");
}
*/ 