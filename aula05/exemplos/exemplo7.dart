/* Exemplo 7 - Construtor
24.02.2025
*/

class Fruta{
  String sabor;
  String nome;
  String cor; 
  double peso;
  int diasDesdeColheita;
  bool? isMadura;

  // Cria Construtor
  Fruta(this.sabor, this.nome, this.cor, this.peso,this.diasDesdeColheita);

  // metodo para verificar se a fruta esta madura
  void verificarMaturidade(int diasParaMaturidade){
    if(diasDesdeColheita>=diasParaMaturidade){
      print("A $nome está madura");
      isMadura = true;
    }
    else{
      print("A $nome não está madura");
      isMadura=false;
    }
  }
}

void main(){
  Fruta manga = Fruta("Doce", "Manga", "Amarela", 1.2, 5);
  manga.verificarMaturidade(6);
}