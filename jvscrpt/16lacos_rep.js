/*const n = [10, 8, 9, 7, 8];
let somadasn = 0

for (let i = 0; i < n.length;  i++){
    somadasn += n[i];
}

const media = somadasn/n.length
console.log(media) */



const notas = [10, 6.5, 8, 7.5];

let somaDasNotas = 0;

/* for (let nota of notas) {
    somaDasNotas += nota;
}

const media = somaDasNotas / notas.length;

console.log(`a média das notas é ${media}`); */

notas.forEach(function (nota) {
    somaDasNotas += nota;
})

const media = somaDasNotas / notas.length;
console.log(`a média das notas é ${media}`);