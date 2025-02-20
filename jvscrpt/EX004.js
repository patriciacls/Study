// 1 - Crie uma função que receba dois arrays e os concatene em um único array.
function concatenaArray(array1, array2){
    return array1.concat(array2);
}

console.log(concatenaArray([1,2,3], [4,5,6]))


// 2 - Crie um array chamado numeros contendo números de 1 a 10. 
// Utilize o método slice para criar um novo array chamado parteNumeros que contenha apenas os números de
//  índice 3 a 7 de numeros.

const numm= [1,2,3,4,5,6,7,8,9,10];
const parteNumeros = numm.slice(3, 8);
console.log(parteNumeros);

/* 
3 - Dado o array frutas contendo frutas que desejamos comprar na feira:
const frutas = ['Maçã', 'Banana', 'Laranja', 'Limão', 'Abacaxi']
Utilize o método splice para remover as frutas no índice 2 e 3 e, em seguida,
 adicione as frutas 'Kiwi' e 'Pêssego' nesses mesmos índices. */

const frutas = ['Maçã', 'Banana', 'Laranja', 'Limão', 'Abacaxi']
frutas.splice(2,2) //o segundo parametro é sobre quantidade de elementos e não de posição!
frutas.push('Kiwi','Pessego')
console.log(frutas)


/*4 - Crie dois arrays chamados menuPrincipal e menuDeSobremesas contendo opções do cardápio de um restaurante. 
Utilize o método concat para criar um novo array menuCompleto contendo todos os elementos de menuPrincipal 
seguidos pelos elementos de menuDeSobremesas.*/

let menuPrincipal = ['Parmegiana','feijoada','lasanha']
let menuSobremesa = ['pudim','sorvete','bolo']
let menuCompleto = menuPrincipal.concat(menuSobremesa)
console.log(`O menu principal: ${menuPrincipal}`)
console.log(`O menu sobremesa: ${menuSobremesa}`)
console.log(`O menu completo: ${menuCompleto}`)

/*5 - Crie uma lista bidimensional com 3 linhas e 3 colunas, onde cada elemento seja uma matriz 3x3 com 
valores iniciando em 1 e aumentando em 1 a cada elemento.*/

let matriz = []
let linha = []  //linha é um array      
let valor = 1

for(let i = 0; i < 3; i++){
    linha = []
    for(let j = 0; j < 3; j++){
        linha.push(valor)
        valor++
    }
    matriz.push(linha)
}
console.log(matriz)