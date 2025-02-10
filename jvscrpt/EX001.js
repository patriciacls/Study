// Declare três variáveis diferentes (uma para cada tipo: string, número e booleano) e atribua valores a elas. Em seguida, exiba o tipo de cada variável no console.
// let v1 = 'Hey'
// let v2 = 1  
// let v3 = false

console.log(typeof v1, typeof v2, typeof v3)
console.log( v1,  v2,  v3)

// Crie duas variáveis, uma contendo seu primeiro nome e 
// //outra contendo seu último nome. Em seguida, combine-as em uma terceira variável usando o operador + 
// e em uma quarta variável usando template strings. Por fim, imprima os resultados obtidos no console.

let firstName = 'Patricia'
let lastName = 'Correia'
let completo = (firstName + ' ' + lastName)
console.log(completo)


// Declare uma variável usando var fora de um bloco de código (por exemplo, if) e outra dentro desse bloco. 
// Tente acessar essas variáveis dentro do bloco e fora dele utilizando console.log e analise os resultados. 
// Faça o mesmo processo utilizando let e compare com os resultados anteriores.
// let teste1 = 'uhuu'

if (1>0) {
     console.log(teste1)
} 

// Declare uma variável booleana que informa se está chovendo e utilize-a em uma estrutura condicional (if) 
// para exibir uma mensagem informando se é preciso levar um guarda-chuva ou não dependendo do valor da variável.

chovendo = true

if (chovendo = true) {
    console.log('Leve um guarda-chuva')
} else {
    console.log('Não precisa de guarda-chuva')
}