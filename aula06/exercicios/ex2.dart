// Classe base
abstract class MaquinaIndustrial {
  void ligar();
  void desligar();
}

// Subclasse Prensa
class Prensa extends MaquinaIndustrial {
  double pressaoToneladas;

  Prensa(this.pressaoToneladas);

  @override
  void ligar() {
    print("Prensa ligada com pressão de $pressaoToneladas toneladas.");
  }

  @override
  void desligar() {
    print("Prensa desligada. Pressão de $pressaoToneladas toneladas.");
  }
}

// Subclasse RobôSolda
class RoboSolda extends MaquinaIndustrial {
  String tipoSolda;

  RoboSolda(this.tipoSolda);

  @override
  void ligar() {
    print("Robô de solda ligado. Realizando solda do tipo $tipoSolda.");
  }

  @override
  void desligar() {
    print("Robô de solda desligado. Solda do tipo $tipoSolda finalizada.");
  }
}

void main() {
  // Testando as classes

  var prensa = Prensa(100);
  prensa.ligar();
  prensa.desligar();

  var roboSolda = RoboSolda("MIG/MAG");
  roboSolda.ligar();
  roboSolda.desligar();
}
