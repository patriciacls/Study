//Autor: Patricia Correia
//Data: 13/02/25
/* Crie uma função que receba o nome de uma pessoa como argumento e retorne uma saudação personalizada. 
Em seguida, chame a função e exiba a saudação no console. */
const saudar = (nome) => console.log(`Olá, ${nome}`)
saudar('Mundo') 

/* Crie uma função que receba a idade de uma pessoa e retorne se ela é maior de idade (idade >= 18). 
Imprima o resultado no console. */
function validaMaioridade(idade) {
    if (idade >= 18) {
        console.log('Maior de idade')
    } else {
        console.log('Menor de idade')
    }   
}
validaMaioridade(10)

/* Crie uma função que receba uma palavra como argumento e retorne se ela é um palíndromo.*/
function palindromo(palavra) {
    let palavra_invertida = palavra.split('').reverse().join('');
    if (palavra === palavra_invertida) {
        console.log('É palindromo');
    } else {
        console.log('Não é palindromo');
    }
}

palindromo('ama');