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

// Classe concreta Carro herdando de Automoveis
class Carro extends Automoveis {
  // Construtor
  Carro(String nome, String cor, int ano) : super(nome, cor, ano);

  // Implementação do método abstrato colocarCinto
  @override
  void colocarCinto() {
    print("Colocando o cinto de segurança... Cinto colocado!");
  }

  // Implementação do método abstrato ligarCarro
  @override
  void ligarCarro() {
    print("Ligando o carro... O carro está ligado!");
  }

  // Implementação do método abstrato desligarCarro
  @override
  void desligarCarro() {
    print("Desligando o carro... O carro foi desligado!");
  }

  // Implementação do método abstrato dirigir
  @override
  void dirigir() {
    print("Dirigindo o carro... O carro está em movimento!");
  }

  // Implementação do método para exibir os detalhes
  void exibirDetalhes() {
    print("Detalhes do Carro:");
    mostrarInformacoes(); // Chama o método da classe base para exibir as informações
  }
}

void main() {
  // Criando um objeto Carro
  var carro = Carro("Fusca", "Azul", 1980);
  
  // Chamando os métodos implementados
  carro.exibirDetalhes();  // Exibe as informações do carro
  carro.colocarCinto();    // Exibe a ação de colocar o cinto
  carro.ligarCarro();      // Exibe a ação de ligar o carro
  carro.dirigir();         // Exibe a ação de dirigir
  carro.desligarCarro();   // Exibe a ação de desligar o carro
}
