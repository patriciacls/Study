//Autor: Patricia Correia
//Data: 11/02/25
//Aprendendo sintaxe dos operadores em javascript

const v1 = 7
const v2 = 7
const v3 = 8
const v4 = 10
let media
let Aprovado;
let faltas = 0
let advertencias = 6

media = (v1 + v2 + v3 + v4) / 4
if(media>=7){
    media += media * 0.1
    Aprovado= true
    console.log(`A média é ${media} e ainda conseguiu um acrescimo!!!!`)
    if(advertencias>=2 || faltas >= 3){ //or
        console.log('deuses do ROCK I O ROLL mi helpa')
    }
}else{                   
if(average <=7 || (advertencias > 2 && faltas >3) )    //and
    {
    aproved= false
    console.log(`A média é ${media}, reprovado.`)
    }else{
        console.log(`A média é ${media}. Reprovado e passara pelo conselho`)
    }
}



































