/*
funcao com parametro nomeado obrigatorioe parametro não nomeado
10.02.2025
*/
// funcao com parametro obrigatorio
void CriarUsuario(int? idade,{required String nome}){
  print("Nome: $nome Idade: $idade ");
}

void main(){
  CriarUsuario(19, nome: "Pedro");
}