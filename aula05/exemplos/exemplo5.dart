/* Exemplo 5 Conceito Herança
24.02.2025
*/


// Classe mãe
class Animal{
  String? nome;
  int? idade;

  void dormir(){
    print("O animal ${nome} está dormindo");
  }
}


// Classe filha
class Cachorro extends Animal{
  void latir(){
    print("O animal ${nome} está latindo");
  }
}


class Tigre extends Animal{
  String? cor;
  void atacar(){
    print("O animal Tigre ${nome} está atacando uma gazela");
  }
}

void main(){
  // Cria o objeto Bob a partir da classe Cachorro
  Cachorro Bob = Cachorro();
  Bob.nome = "Bob";
  Bob.idade=2;
  Bob.latir();
  Bob.dormir();

  Tigre Spyke = Tigre();
  Spyke.cor="Branco";
  Spyke.idade=10;
  Spyke.nome="Spyke";
  Spyke.atacar();
}