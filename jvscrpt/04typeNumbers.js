//TESTANDO TIPO DE NUMEROS
let n1 = 8
let n2 = 6.3
let n3= 7
let n4 = Number.parseInt('8')

const total = (n1 + n2 + n3 +n4)/4

if (total >= 7) {
    console.log('Média final: ' + total.toFixed(2) + '; Aprovado')
} else {
    console.log('Média final: ' + total.toFixed(2) + '; Reprovado')
}   
