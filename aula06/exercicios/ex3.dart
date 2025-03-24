class Pessoa {
  String _nome = '';
  int _idade = 0;

  // Getter e Setter para o nome
  String get nome => _nome;

  set nome(String nome) {
    if (nome.isEmpty) {
      print("O nome não pode ser vazio.");
    } else {
      _nome = nome;
    }
  }

  // Getter e Setter para a idade
  int get idade => _idade;

  set idade(int idade) {
    if (idade < 0) {
      print("A idade não pode ser negativa.");
    } else if (idade > 150) {
      print("A idade não pode ser maior que 150.");
    } else {
      _idade = idade;
    }
  }

  // Método para mostrar as informações da pessoa
  void mostrarInformacoes() {
    print("Nome: $_nome");
    print("Idade: $_idade anos");
  }
}

void main() {
  // Criando uma pessoa
  var pessoa = Pessoa();

  // Definindo nome e idade com validação
  pessoa.nome = "João";  // Nome válido
  pessoa.idade = 25;     // Idade válida
  
  // Tentando atribuir valores inválidos
  pessoa.nome = "";      // Nome inválido
  pessoa.idade = -5;     // Idade inválida
  
  // Exibindo as informações
  pessoa.mostrarInformacoes();
}
