// Classe mãe
class Maquina {
  String? nome;
  int? quantidadeEixos;
  int? rotacoesPorMinuto;
  double? consumoEnergia;

  // Construtor
  Maquina(this.nome, this.quantidadeEixos, this.rotacoesPorMinuto, this.consumoEnergia);

  // Métodos
  void ligar() {
    print("A máquina ${nome}, com $quantidadeEixos eixos, está ligada!");
  }

  void desligar() {
    print("A máquina ${nome}, com $quantidadeEixos eixos, está desligada!");
  }

  void ajustarRotacao(int novaRotacao) {
    rotacoesPorMinuto = novaRotacao;
    print("A rotação da máquina ${nome} foi ajustada para ${rotacoesPorMinuto} RPM.");
  }
}

// Classe filha Furadeira
class Furadeira extends Maquina {
  Furadeira(nome, quantidadeEixos, rotacoesPorMinuto, consumoEnergia)
      : super(nome, quantidadeEixos, rotacoesPorMinuto, consumoEnergia);

  // Método específico para a Furadeira
  void perfurar() {
    print("A furadeira ${nome} está perfurando.");
  }
}

void main() {
  // Criando um objeto da classe Furadeira
  Furadeira furadeira1 = Furadeira("Furadeira Elétrica", 2, 1500, 800.0);
  
  // Testando os métodos
  furadeira1.ligar();
  furadeira1.perfurar();
  furadeira1.ajustarRotacao(2000);
  furadeira1.desligar();
}
