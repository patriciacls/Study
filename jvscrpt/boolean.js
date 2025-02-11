/*Use == quando você deseja comparar valores, permitindo a conversão de tipos. 
Use === quando você deseja comparar valores e tipos, sem permitir a conversão de tipos.*/
const estudante = 'Iuri'
const aprovado = false

if (aprovado === true) {  
    console.log('Parabéns ' + estudante + ', você foi aprovado!')
} else {console.log('Infelizmente ' + estudante + ', você foi reprovado!')}

