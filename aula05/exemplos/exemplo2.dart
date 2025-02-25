/* Exemplo 2 programação orientada a objeto
24.02.2025
*/

class Carro{
  String marca = 'Nissan';
  int ano = 2025;
// cria um metodo para abrir a porta do carro
  void abrirporta(int nqtde){
    if(nqtde==1){
      print("Porta do motorista aberta");
    }
    if(nqtde==2){
      print("Porta do motorista e passageiro aberta");
    }
    if(nqtde==3){
      print("Porta do motorista, do passageiro e traseira esquerda abertas");
    }
    if(nqtde==4){
      print("As quatro portas do carro estão abertas");
    }
  }

    void fecharporta(int nqtde){
    if(nqtde==1){
      print("Porta do motorista fechada");
    }
    if(nqtde==2){
      print("Porta do motorista e passageiro fechadas");
    }
    else if(nqtde==3){
      print("Porta do motorista, do passageiro e traseira esquerda fechadas");
    }
    else{
      print("As quatro portas do carro estão fechadas");
    }
    }
    void liga(){
      print("Carro ligado");
    }

    void desliga(){
      print("Carro desligado");
    }
  }


void main(){
  //instanciando o objeto Tiida
  Carro Tiida = Carro();

  Tiida.ano = 2022;
  Tiida.marca = "Nissan Tiida";
  Tiida.liga();
  Tiida.fecharporta(4);
  print("Exibe infos Carro");
  print(" ${Tiida.marca}");
  print(" ${Tiida.ano}");
}