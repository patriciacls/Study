/*Crie variáveis que armazenem o valor do saldo, de depósito e de um saque de uma conta bancária, 
depois realize operações de adição e subtração entre eles utilizando uma variável chamada operacao, 
considerando a função de cada variável criada anteriormente. Exiba os resultados finais no console.*/

let saldo = 1000
let deposito = 500
let saque = 300
let operacao

operacao = saldo + deposito - saque
console.log(`O saldo final é de: ${operacao}`)

/*Crie uma variável numérica com um valor. Utilize um operador ternário para verificar se esse valor é 
par ou ímpar. Exiba o resultado no console.*/

let numero = 4
let resultado = numero % 2 == 0 ? 'Par' : 'Ímpar'
console.log(`${numero} é ${resultado}`)

let usuario = 'PATRICIACORREIA'
let admin = true
let logLogon = true

if (logLogon == true && admin == true) {
    console.log(`Acesso permitido ao usuário ${usuario}`)
}else{
    console.log(`Acesso negado ao usuário ${usuario}`)
}
