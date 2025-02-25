/* Exemplo 6 - Construtor
24.02.2025
*/


// Classe mãe
class Animal{
  String? nome;
  int? idade;

  // Construtor
  Animal(this.nome, this.idade);

  void dormir(){
    print("O animal ${nome} está dormindo");
  }
}


// Classe filha
class Cachorro extends Animal{
  Cachorro(nome, idade):super(nome, idade);
  void latir(){
    print("O animal ${nome} está latindo");
  }
}


class Tigre extends Animal{
  String? cor;
  Tigre(nome, idade, this.cor):super(nome, idade);
  void atacar(){
    print("O animal Tigre ${nome} está atacando uma gazela");
  }
}

void main(){
  // Cria o objeto Bob a partir da classe Cachorro
  Cachorro Bob = Cachorro("Bob",2);
  //Bob.nome = "Bob";
  //Bob.idade=2;
  Bob.latir();
  Bob.dormir();

  Tigre Spyke = Tigre("Spyke", 30, "Branco");
  //Spyke.cor="Branco";
  //Spyke.idade=10;
  //Spyke.nome="Spyke";
  Spyke.atacar();
}