/* Exemplo 04 classe usuario
24.02.2025
*/
class Usuario{
  String? usuario;
  String? senha;

  // metodo de autenticacao
  void autentica(){
    String usuario = "Senai";
    String senha = "senai@2025";
    if(this.usuario == usuario && this.senha == senha){
      print("Login efetuado com sucesso");
    }else{
      print("Login falhou");
    }
  }
}


void main(){
  Usuario cliente = Usuario();
  cliente.usuario = "Senai";
  cliente.senha = "senai@2025";
  cliente.autentica();
}