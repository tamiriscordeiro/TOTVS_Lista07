// 43.Jogo da mágica. Nesta mágica as cartas de um baralho serão
// apresentadas na tela dispostas em 7 linhas e 3 colunas. O programa
// será capaz de adivinhar uma carta selecionada pelo usuário, que
// apenas indicará em qual coluna a carta se encontra. [Solicitar
// demonstração ao professor]. Para implementar esse interessante
// jogo, implemente os seguintes passos:
// a. Montar um vetor de 52 posições contendo todas as cartas de
// cada naipe do baralho. Dica: utilize uma string de 2 posições
// para representar cada carta. Exemplo: o rei de espadas seria
// ‘K’
// + #006 (caractere ASCII 6); o ás de copas seria ‘A’ + #003; o
// 5 de ouros seria ‘5’ + #004; a dama de paus seria ‘Q’ + #005. 
//b. Embaralhar as cartas dentro desse vetor.
// c. Montar um vetor de 21 posições contendo as 21 primeiras cartas
// do baralho já embaralhado. Nesta mágica apenas utilizaremos
// 21 cartas.
// d. Montar uma matriz de 7 linhas por 3 colunas onde a primeira
// célula receberá a última carta do vetor a segunda a penúltima e
// assim sucessivamente até que a última célula que se encontra
// na 7a linha da 2a coluna receba a primeira carta do vetor de 21
// cartas.
// e. Apresentar a matriz na tela e solicitar que o usuário escolha
// uma carta e indique em qual coluna ela se encontra.
// f. Preencher o vetor de 21 posições a partir das cartas da matriz 7
// 43.Jogo da mágica. Nesta mágica as cartas de um baralho serão
// apresentadas na tela dispostas em 7 linhas e 3 colunas. O programa
// será capaz de adivinhar uma carta selecionada pelo usuário, que
// apenas indicará em qual coluna a carta se encontra. [Solicitar
// demonstração ao professor]. Para implementar esse interessante
// jogo, implemente os seguintes passos:
// a. Montar um vetor de 52 posições contendo todas as cartas de
// cada naipe do baralho. Dica: utilize uma string de 2 posições
// para representar cada carta. Exemplo: o rei de espadas seria
// ‘K’
// + #006 (caractere ASCII 6); o ás de copas seria ‘A’ + #003; o
// 5 de ouros seria ‘5’ + #004; a dama de paus seria ‘Q’ + #005. 
//b. Embaralhar as cartas dentro desse vetor.
// c. Montar um vetor de 21 posições contendo as 21 primeiras cartas
// do baralho já embaralhado. Nesta mágica apenas utilizaremos
// 21 cartas.
// d. Montar uma matriz de 7 linhas por 3 colunas onde a primeira
// célula receberá a última carta do vetor a segunda a penúltima e
// assim sucessivamente até que a última célula que se encontra
// na 7a linha da 2a coluna receba a primeira carta do vetor de 21
// cartas.
// e. Apresentar a matriz na tela e solicitar que o usuário escolha
// uma carta e indique em qual coluna ela se encontra.
// f. Preencher o vetor de 21 posições a partir das cartas da matriz 7
// x 3 sendo que as cartas da coluna informada pelo usuário
// deverão ocupar as posições de 8 a 14 do vetor e as demais
// colunas as posições de 1 a 7 e 15 a 21 respectivamente.
// g. Repetir os passos de “d” a “f” por mais 2 vezes sendo que o
// usuário não escolhera uma nova carta, apenas indicará em que
// coluna está a carta escolhida inicialmente.
// h. Exibir na tela a 11a carta do vetor de 21 posições.

SET PROCEDURE TO magica.prg

Function Main()

    local nI        := 0
    local nOpc      := 1
    local aCartas2  := {}
    local aMatriz7   := {}
    local a21       := {}
    local aCartas   :=  { "A"+chr(3) , "A"+chr(4) , "A"+chr(5) , "A"+chr(6) , ;
                        "2"+chr(3) , "2"+chr(4) , "2"+chr(5) , "2"+chr(6) , ;
                        "3"+chr(3) , "3"+chr(4) , "3"+chr(5) , "3"+chr(6) , ;
                        "4"+chr(3) , "4"+chr(4) , "4"+chr(5) , "4"+chr(6) , ;
                        "5"+chr(3) , "5"+chr(4) , "5"+chr(5) , "5"+chr(6) , ;
                        "6"+chr(3) , "6"+chr(4) , "6"+chr(5) , "6"+chr(6) , ;
                        "7"+chr(3) , "7"+chr(4) , "7"+chr(5) , "7"+chr(6) , ;
                        "8"+chr(3) , "8"+chr(4) , "8"+chr(5) , "8"+chr(6) , ;
                        "9"+chr(3) , "9"+chr(4) , "9"+chr(5) , "9"+chr(6) , ;
                        "10"+chr(3) , "10"+chr(4) , "10"+chr(5) , "10"+chr(6) , ;
                        "J"+chr(3) , "J"+chr(4) , "J"+chr(5) , "J"+chr(6) , ;
                        "Q"+chr(3) , "Q"+chr(4) , "Q"+chr(5) , "Q"+chr(6) , ;
                        "K"+chr(3) , "K"+chr(4) , "K"+chr(5) , "K"+chr(6) }

    EMBARALHA(@aCartas)
    a21 := VETOR21(aCartas)
    ?
    QOUT("**")
    QOUT("Escolha uma carta")
    QOUT("**")
    a21 := MATRIZ7(a21)
    QOUT("")
    
    INPUT "Digite a coluna em que sua carta esta: " TO nOpc
        a21 := MatrizVetor(a21 , nOpc)
        a21 := MATRIZ7(a21)
        QOUT("")

    INPUT "Digite a coluna em que sua carta esta: " TO nOpc
        a21 := MatrizVetor(a21 , nOpc)
        a21 := MATRIZ7(a21)
        QOUT("")

    INPUT "Digite a coluna em que sua carta esta: " TO nOpc

    a21 := MatrizVetor(a21 , nOpc)
    QOUT("A carta escolhida foi " , a21[11])


Return NIL
