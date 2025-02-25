// Classe mãe
class Animal{
  String? nome;
  int? idade;

  // Construtor
  Animal(this.nome, this.idade);

  void dormir(){
    print("O animal ${nome}, de idade ${idade} está dormindo");
  }

  void acordou(){
    print("O animal ${nome}, de idade ${idade} acordou");
  }
}

class Passaro extends Animal{
  Passaro(nome, idade):super(nome, idade);
}

class Cachorro extends Animal{
  Cachorro(nome, idade):super(nome, idade);
}

class Tigre extends Animal{
  Tigre(nome, idade):super(nome, idade);
}

class Peixe extends Animal{
  Peixe(nome, idade):super(nome, idade);
}

void main(){
Passaro Piupiu =Passaro("Tico",3);
  Piupiu.dormir();
  Piupiu.acordou();
Cachorro Mayke = Cachorro("Mayke", 5);
  Mayke.dormir();
  Mayke.acordou();
Tigre Bobao = Tigre("Bobao", 10);
  Bobao.dormir();
  Bobao.acordou();
  Peixe Nemo = Peixe("Nemo", 1);
  Nemo.dormir();
  Nemo.acordou();
}