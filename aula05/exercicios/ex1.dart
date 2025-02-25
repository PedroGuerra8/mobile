// Classe mãe
class Animal{
  String? nome;
  int? idade;
  String? cor;
  String raca;

  // Construtor
  Animal(this.nome, this.idade, this.cor, this.raca);

  void dormir(){
    print("O animal ${nome}, de idade ${idade}, da cor ${cor}, da raça ${raca} está dormindo");
  }
}

class Gato extends Animal{
  Gato(nome, idade, cor, raca):super(nome, idade, cor, raca);
}

void main(){
  Gato Tico = Gato("Tico",3,"preto","frajolinha");
  Tico.dormir();
}