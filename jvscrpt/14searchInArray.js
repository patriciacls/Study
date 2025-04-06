const alunos = ['João', 'Juliana', 'Caio', 'Ana'];
const medias = [10, 8, 7.5, 9];
const lista = [alunos, medias];

function exibirNomeNota(aluno) {
    if (lista[0].includes(aluno)){ // include verifica se o valor está presente no array
        const indice = lista[0].indexOf(aluno)// posições correspontentes, indexOf retorna o índice do valor no array
        const mediaAluno = lista[1][indice]
        console.log(`${aluno}, sua média é ${mediaAluno}`)
        }else{
            console.log('Aluno não está cadastrado')
        }
    }

exibirNomeNota('Caio')
exibirNomeNota('pat')

//desestruturação pra ao inves de usar lista[0] e lista[1] usar alunos e medias
const alunos = ['João', 'Juliana', 'Caio', 'Ana'];
const medias = [10, 8, 7.5, 9];
const lista = [alunos, medias];

function exibirNomeNota(aluno) {
    if (lista[0].includes(aluno)){ // include verifica se o valor está presente no array
        const [alunos, medias] = lista
        const indice = alunos.indexOf(aluno)// posições correspontentes, indexOf retorna o índice do valor no array
        const mediaAluno = medias[indice]
        console.log(`${aluno}, sua média é ${mediaAluno}`)
        }else{
            console.log('Aluno não está cadastrado')
        }
    }

exibirNomeNota('Caio')
exibirNomeNota('pat')