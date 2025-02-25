// Classe mãe Produtos
class Produtos {
  String nome;
  int quantidade;
  double preco;
  String tipoComunicacao;
  double consumoEnergia;

  // Construtor da classe Produtos
  Produtos(this.nome, this.quantidade, this.preco, this.tipoComunicacao, this.consumoEnergia);

  // Métodos comuns para todos os produtos
  void ligar() {
    print("$nome está ligado.");
  }

  void desligar() {
    print("$nome está desligado.");
  }

  void ajustarTemperatura(double setpoint) {
    print("Ajuste de temperatura não aplicável para $nome.");
  }
}

// Classe filha Fritadeira
class Fritadeira extends Produtos {
  Fritadeira(nome, quantidade, preco, tipoComunicacao, consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  @override
  void ajustarTemperatura(double setpoint) {
    print("A temperatura da fritadeira $nome foi ajustada para $setpoint°C.");
  }
}

// Classe filha Televisao
class Televisao extends Produtos {
  Televisao(nome, quantidade, preco, tipoComunicacao, consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  @override
  void ajustarTemperatura(double setpoint) {
    // Televisão não tem ajuste de temperatura, então apenas informamos isso
    print("Ajuste de temperatura não aplicável para a $nome.");
  }
}

// Classe filha ArCondicionado
class ArCondicionado extends Produtos {
  ArCondicionado(nome, quantidade, preco, tipoComunicacao, consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  @override
  void ajustarTemperatura(double setpoint) {
    print("A temperatura do ar-condicionado $nome foi ajustada para $setpoint°C.");
  }
}

void main() {
  // Criando objetos de cada classe filha
  Fritadeira fritadeira = Fritadeira("Fritadeira Elétrica", 1, 200.0, "Manual", 1500.0);
  Televisao televisao = Televisao("Televisão LED", 1, 1500.0, "HDMI", 200.0);
  ArCondicionado arCondicionado = ArCondicionado("Ar Condicionado Split", 1, 3000.0, "Wi-Fi", 2200.0);

  // Testando os métodos
  fritadeira.ligar();
  fritadeira.ajustarTemperatura(180); // Ajuste de temperatura específico para a Fritadeira
  fritadeira.desligar();

  televisao.ligar();
  televisao.ajustarTemperatura(22); // Ajuste de temperatura não aplicável para Televisão
  televisao.desligar();

  arCondicionado.ligar();
  arCondicionado.ajustarTemperatura(22); // Ajuste de temperatura para o Ar Condicionado
  arCondicionado.desligar();
}
