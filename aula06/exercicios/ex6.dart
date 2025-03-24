// Classe abstrata Automoveis
abstract class Automoveis {
  // Atributos
  String nome;
  String cor;
  int ano;

  // Construtor para inicializar os atributos
  Automoveis(this.nome, this.cor, this.ano);

  // Métodos abstratos
  void colocarCinto();
  void ligarCarro();
  void desligarCarro();
  void dirigir();

  // Método concreto para mostrar as informações gerais do automóvel
  void mostrarInformacoes() {
    print("Nome: $nome");
    print("Cor: $cor");
    print("Ano: $ano");
  }
}

// Classe Carro herdando de Automoveis
class Carro extends Automoveis {
  // Construtor
  Carro(String nome, String cor, int ano) : super(nome, cor, ano);

  // Implementação do método abstrato colocarCinto
  @override
  void colocarCinto() {
    print("Cinto de segurança colocado.");
  }

  // Implementação do método abstrato ligarCarro
  @override
  void ligarCarro() {
    print("Carro ligado.");
  }

  // Implementação do método abstrato desligarCarro
  @override
  void desligarCarro() {
    print("Carro desligado.");
  }

  // Implementação do método abstrato dirigir
  @override
  void dirigir() {
    print("Carro em movimento.");
  }

  // Implementação do método exibirDetalhes
  void exibirDetalhes() {
    print("Detalhes do Carro:");
    mostrarInformacoes(); // Chama o método da classe base para exibir as informações
  }
}

void main() {
  // Criando um objeto Carro
  var carro = Carro("Fusca", "Azul", 1980);
  
  // Chamando os métodos implementados
  carro.exibirDetalhes();
  carro.colocarCinto();
  carro.ligarCarro();
  carro.dirigir();
  carro.desligarCarro();
}
