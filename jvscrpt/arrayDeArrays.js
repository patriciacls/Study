const alunos = ['João', 'Juliana', 'Caio', 'Ana'];
const medias = [10, 8, 7.5, 9];

const lista = [alunos, medias];

/* O array funcionarios é um array de duas dimensões. Há 3 arrays dentro dele, e para acessar os valores em funcionarios precisamos de 2 colchetes “[ ] [ ]”. O primeiro colchete será usado para escolher qual dos 3 arrays dentro de funcionarios será acessado, podendo ser:

0 -> nomes
1 -> idades
2 -> faculdade
O segundo colchete será usado para acessar a informação dentro do array escolhido.
 */

console.log(
`a aluna da posição 1 da lista é: ${lista[0][1]}.
a nota dessa aluna é ${lista[1][1]}`
);

console.log(lista[0]);


