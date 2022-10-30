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

Function MatrizVetor(aCartas7x3 , nOpcao)
    local aBaralho21 := array(21)
    local nI := 0


    IF nOpcao == 1 
        FOR nI := 1 to 7
            aBaralho21[ni] := aCartas7x3[nI][2]
            aBaralho21[ni+7] := aCartas7x3[nI][1]
            aBaralho21[ni+14] := aCartas7x3[nI][3]
        NEXT
    ELSEIF nOpcao == 3 
        FOR nI := 1 to 7
            aBaralho21[ni] := aCartas7x3[nI][1]
            aBaralho21[ni+7] := aCartas7x3[nI][3]
            aBaralho21[ni+14] := aCartas7x3[nI][2]
        NEXT
    ELSE
        FOR nI := 1 TO 7 // mantem a sequencia das colunas 
            aBaralho21[ni] := aCartas7x3[nI][1]
            aBaralho21[ni+7] := aCartas7x3[nI][2]
            aBaralho21[ni+14] := aCartas7x3[nI][3]
        NEXT
    ENDIF

Return aBaralho21
