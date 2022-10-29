// 2. Ler 10 elementos de uma matriz tipo vetor e apresentá-los depois de
// todos serem lidos.

Function Main()

    local aMatriz := {}
    local nMat    := 0
    local nCont   := 0

    While nCont < 10
        Accept "Digite algo: " TO nMat
            Aadd(aMatriz, nMat)
        nCont ++
    enddo

    QOUT(hb_valtoexp(aMatriz))

Return NIL
