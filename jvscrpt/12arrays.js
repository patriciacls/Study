//Autor: Patricia Correia
//Data: 13/02/25
//aprendendo sintaxe de arrays em javascript

const notas = [7, 8, 9.2, 10]
let i = 0
let notaFinal = 0

console.log(notas)
notas.push(7)//insere no final
console.log(notas)

notas.pop()//remove o último
console.log(notas)

for (i=0; i < notas.length; i++) {
    notaFinal += notas[i]
}
console.log(`A média é ${notaFinal/notas.length}`)

const arrayVazia = [];
console.log(arrayVazia)
console.log(arrayVazia.length)


// //SPLIT
const listaEstudantes = ['João', 'Juliana', 'Ana', 'Caio', 'Lara', 'Marjorie', 'Guilherme', 'Aline', 'Fabiana', 'André', 'Carlos', 'Paulo', 'Bia', 'Vivian', 'Isabela', 'Vinícius', 'Renan', 'Renata', 'Daisy', 'Camilo'];
const SALA1 = listaEstudantes.slice(0, listaEstudantes.length/2);
const SALA2 = listaEstudantes.slice(listaEstudantes.length/2);

console.log(SALA1);
console.log(SALA2);

// //SPLICE
animaisDoAquario = ['baleia', 'polvo', 'golfinho', 'tubarão']

animaisDoAquario.splice(1, 0, 'sardinha')
animaisDoAquario.splice(3, 2, 'atum')

console.log(animaisDoAquario)


//concatenar
const salaJS = ['Evaldo', 'Camis', 'Mari'];
const salaPython = ['Ju', 'Leo', 'Raquel'];

const salasUnificadas = salaJS.concat(salaPython);
console.log(salasUnificadas);