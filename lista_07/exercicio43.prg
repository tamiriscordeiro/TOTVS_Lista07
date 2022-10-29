// 43.Jogo da m�gica. Nesta m�gica as cartas de um baralho ser�o
// apresentadas na tela dispostas em 7 linhas e 3 colunas. O programa
// ser� capaz de adivinhar uma carta selecionada pelo usu�rio, que
// apenas indicar� em qual coluna a carta se encontra. [Solicitar
// demonstra��o ao professor]. Para implementar esse interessante
// jogo, implemente os seguintes passos:
// a. Montar um vetor de 52 posi��es contendo todas as cartas de
// cada naipe do baralho. Dica: utilize uma string de 2 posi��es
// para representar cada carta. Exemplo: o rei de espadas seria
// �K�
// + #006 (caractere ASCII 6); o �s de copas seria �A� + #003; o
// 5 de ouros seria �5� + #004; a dama de paus seria �Q� + #005. 
//b. Embaralhar as cartas dentro desse vetor.
// c. Montar um vetor de 21 posi��es contendo as 21 primeiras cartas
// do baralho j� embaralhado. Nesta m�gica apenas utilizaremos
// 21 cartas.
// d. Montar uma matriz de 7 linhas por 3 colunas onde a primeira
// c�lula receber� a �ltima carta do vetor a segunda a pen�ltima e
// assim sucessivamente at� que a �ltima c�lula que se encontra
// na 7a linha da 2a coluna receba a primeira carta do vetor de 21
// cartas.
// e. Apresentar a matriz na tela e solicitar que o usu�rio escolha
// uma carta e indique em qual coluna ela se encontra.
// f. Preencher o vetor de 21 posi��es a partir das cartas da matriz 7
// 43.Jogo da m�gica. Nesta m�gica as cartas de um baralho ser�o
// apresentadas na tela dispostas em 7 linhas e 3 colunas. O programa
// ser� capaz de adivinhar uma carta selecionada pelo usu�rio, que
// apenas indicar� em qual coluna a carta se encontra. [Solicitar
// demonstra��o ao professor]. Para implementar esse interessante
// jogo, implemente os seguintes passos:
// a. Montar um vetor de 52 posi��es contendo todas as cartas de
// cada naipe do baralho. Dica: utilize uma string de 2 posi��es
// para representar cada carta. Exemplo: o rei de espadas seria
// �K�
// + #006 (caractere ASCII 6); o �s de copas seria �A� + #003; o
// 5 de ouros seria �5� + #004; a dama de paus seria �Q� + #005. 
//b. Embaralhar as cartas dentro desse vetor.
// c. Montar um vetor de 21 posi��es contendo as 21 primeiras cartas
// do baralho j� embaralhado. Nesta m�gica apenas utilizaremos
// 21 cartas.
// d. Montar uma matriz de 7 linhas por 3 colunas onde a primeira
// c�lula receber� a �ltima carta do vetor a segunda a pen�ltima e
// assim sucessivamente at� que a �ltima c�lula que se encontra
// na 7a linha da 2a coluna receba a primeira carta do vetor de 21
// cartas.
// e. Apresentar a matriz na tela e solicitar que o usu�rio escolha
// uma carta e indique em qual coluna ela se encontra.
// f. Preencher o vetor de 21 posi��es a partir das cartas da matriz 7
// x 3 sendo que as cartas da coluna informada pelo usu�rio
// dever�o ocupar as posi��es de 8 a 14 do vetor e as demais
// colunas as posi��es de 1 a 7 e 15 a 21 respectivamente.
// g. Repetir os passos de �d� a �f� por mais 2 vezes sendo que o
// usu�rio n�o escolhera uma nova carta, apenas indicar� em que
// coluna est� a carta escolhida inicialmente.
// h. Exibir na tela a 11a carta do vetor de 21 posi��es.
// SET PROCEDURE TO lib43.prg

Function Main()

    local nI     := 0
    local nOpcao := 0
    local aCartas2 := {}
    local aMatriz7 := {}
    local a21 := {}
    local aCartas :=  { "A"+chr(3) , "A"+chr(4) , "A"+chr(5) , "A"+chr(6) , ;
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
    a21 := MATRIZ7(a21)
    QOUT("")
    INPUT "Coloque aqui qual a coluna que sua carta est�: " TO nOpcao
    ESCOLHA(nOpcao , @a21)
    a21 := ESCOLHA(nOpcao , @a21)

Return NIL

Function EMBARALHA(aCartas)

    local nAleatorio := 0
    local nI         := 0
    local nAux       := 0

    FOR nI := 1 TO len(aCartas)
        nAleatorio := INT(random() % len(aCartas) + 1)
        nAux := aCartas[nI]
        aCartas[nI] := aCartas[nAleatorio]
        aCartas[nAleatorio] := nAux
    NEXT nI 
Return aCartas

Function VETOR21(Cartas)

    local nI := 0
    local a21 := array(21)

    FOR nI := 1 TO 21

        a21[nI] := Cartas[nI]

    NEXT
    QOUT(hb_valtoexp(a21))
Return a21

Function MATRIZ7(Cartas)

    local nI   := 0
    local nJ   := 0
    local nAux := 21
    local aMatriz7 := ARRAY(7,3)

    QOUT("*******************")
    QOUT("Escolha uma carta")
    QOUT("*******************")
    FOR nJ := 1 TO 7
        FOR nI := 1 TO 3
            aMatriz7[nJ,nI] := Cartas[nAux]
            nAux--
        NEXT nI 
    NEXT nJ

    FOR nJ := 1 TO 7
    QOUT(hb_valtoexp(aMatriz7[nJ]))
    NEXT nJ

Return aMatriz7


Function ESCOLHA(Opcao , Matriz)

    local nI := 0
    local cAux := ""

    QOUT("")

    IF Opcao == 1
        FOR nI := 1 TO 7
            cAux := Matriz[nI , 2]
            Matriz[nI , 2] := Matriz[nI , 1]
            Matriz[nI,1] := cAux
            QOUT(hb_valtoexp(Matriz[nI]))
        NEXT nI

    ELSEIF Opcao == 3
        FOR nI := 1 TO 7
            cAux := Matriz[nI , 3]
            Matriz[nI , 2] := Matriz[nI , 3]
            Matriz[nI,3] := cAux
            QOUT(hb_valtoexp(Matriz[nI]))
        NEXT nI
    ENDIF

Return Matriz
