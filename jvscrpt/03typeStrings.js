//Autor: Patricia Correia
//Data: 10/02/25
//Testando uso do tipo string
const cumprimento = ' "teste" ';
const citacao = ` "teste" `;

console.log(cumprimento);
console.log(citacao);

console.log(`O grande${citacao}`)

const valida = ('deixa maiusculo' + citacao.toUpperCase())
console.log(valida)