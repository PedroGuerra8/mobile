/*
funcao com parametro nomeado obrigatorio
10.02.2025
*/

void CriarUsuario({required String nome, int idade=18}){
  print("Usuario: $nome, Idade: $idade");
}

void main(){
  CriarUsuario(nome: "Pedro", idade: 19);
}