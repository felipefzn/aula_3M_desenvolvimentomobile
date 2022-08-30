void main(List<String> arguments) {
  // Hoje vamos estudar o tipo "Listas"
  // São estruturas que permitem o armazenamento de vários dados
  // de uma só vez. Isto ocorre de forma sequencial, e os dados
  // são identificados a partir de um índice

   var nomes = <String>['Edson', 'Maria', 'Gustavo', 'Elisa', 'Tio Patinhas'];


   print("Número de elementos na lista: ${nomes.length}");

  // Podemos percorrer uma lista item a item usando o FOR
  // Em Dart existem dois tipos: "for" e o "for in"

   // FOR
   for (var i = 0; i < nomes.length ; i++) {
     print('índice $i => ${nomes[i]}');
   }

   for (var i = 0; i < nomes.length ; i++) {
     print(nomes[i]);
   }
  
  // FOR IN
  // Percorre uma lista até o último item, sem a necessidade 
  // de indicar o ponto de parada
  // for <variavel> in conjunto{ ... comandos ...}

  for (var nome in nomes){
    print(nome);
  }


  //Outro exemplo
  var numeros = <int>[1, 2, 45, 67, -9];
  for (var numero in numeros){
    print(numero);
  }

  // Manupulando itens de uma lista
  var lista = <String>[];

  // Inclusão de itens
  lista.add('Patinhas'); // add adiciona sempre no final da lista
  lista.add('Edson');
  print(lista);


// Adicionar dados em uma posição específica
lista.insert(0, 'Batata');
lista.insert(2, 'Feijão');
print(lista);

// Inserindo mais de um elemento por vez
// maracutaia


var x = <String>['A', 'B', 'C'];
var y = <String>['D', 'E', 'F'];

/*for (var a in x){
  y.insert(0, a);
  print(y);
}*/


// Atividade 
// Fazer a junção das listas acima, finalizando ordenada

for (var a in x){
  y.insert(y.length - x.length, a);
  print(y);
}

//Inserindo vários elementos de forma "elegante"

var frutas = <String>[];
frutas
..add('Pêra')
..add('Banana')
..add('Abacate');
print(frutas);

// Outro jeito addAll()

var bebidas = <String>[];

bebidas.addAll(['Coca-Cola', 'Guarana']);
print(bebidas);

bebidas.insertAll(0, ['Sprite', 'Fanta Laranja']); // com o insertAll, a única dif é que você tem que passar o índice
print(bebidas);

// Remover elementos
bebidas.remove('Guarana');
print(bebidas);

bebidas.removeAt(1); // por índice
print(bebidas);

bebidas.removeLast(); //último da lista
print(bebidas);
