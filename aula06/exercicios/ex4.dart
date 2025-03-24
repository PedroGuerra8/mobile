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

void main() {
  // A classe Automoveis é abstrata, então não pode ser instanciada diretamente.
  // Mas podemos criar subclasses que implementam seus métodos.
}
