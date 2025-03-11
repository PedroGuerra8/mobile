abstract class Maquina {
  String nome;
  double potencia;

  // Construtor
  Maquina(this.nome, this.potencia);

}

class Frisadora implements Maquina {
  String nome;
  double potencia;

  // Construtor
  Frisadora(this.nome, this.potencia);

  @override
  void ligar(bool status) {
    if(status==true){
      print("Frisadora ligada");
    }else{
      print("Frisadora desligada");
    }
  }
}

void main() {
  // Criando uma instância de Frisadora
  Frisadora frisadora = Frisadora("Frisadora 1", 1500);
  frisadora.ligar(false);   // Chama o método ligar
}
