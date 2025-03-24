// Classe abstrata Automoveis
abstract class Automoveis {
  // Atributos
  String nome;
  String cor;
  int ano;

  // Construtor para inicializar os atributos
  Automoveis(this.nome, this.cor, this.ano);

  // Método abstrato
  void exibirDetalhes();

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

  // Implementação do método abstrato exibirDetalhes
  @override
  void exibirDetalhes() {
    print("Detalhes do Carro:");
    mostrarInformacoes(); // Chama o método da classe base para exibir as informações
  }
}

void main() {
  // Criando um objeto Carro
  var carro = Carro("Fusca", "Azul", 1980);
  
  // Chamando o método para exibir os detalhes do carro
  carro.exibirDetalhes();
}
