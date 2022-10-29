Function EMBARALHA(Vetor)

    local nAleatorio := 0
    local nI         := 0
    local nAux       := 0

    FOR nI := 1 TO len(Vetor)
        nAleatorio := INT(random() % len(Vetor) + 1)
        nAux := Vetor[nI]
        Vetor[nI] := Vetor[nAleatorio]
        Vetor[nAleatorio] := nAux
    NEXT nI 

Return Vetor

Function VETOR21(Cartas)

    local nI := 0
    local a21 := array(21)

    FOR nI := 1 TO 21

        a21[nI] := Cartas[nI]

    NEXT

Return a21

Function MATRIZ7(Cartas)

    local nI   := 0
    local nJ   := 0
    local nAux := 21
    local aMatriz7 := ARRAY(7,3)

    QOUT("Escolha uma carta")
    QOUT("*******************")
    FOR nJ := 1 TO 7
        FOR nI := 1 TO 3
            aMatriz7[nJ,nI] := Cartas[nAux]
            nAux--
        NEXT nI 
        // QOUT(hb_valtoexp(aMatriz7[nI]))
    NEXT nJ

Return aMatriz7
