/*
Funcao assincrona
12.02.2025
*/

Future<void> carregarDados()async{
  print("Carregando");
  // Future.delayed atraso da resposta simulando uma api
  await Future.delayed((Duration(seconds: 2)));
  print("Dados carregados");

}

void main()async{
  await carregarDados();
}