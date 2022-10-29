// 3. Ler 10 elementos de uma matriz tipo vetor e apresentá-los na ordem
// inversa em que foram lidos e armazenados.

Function Main()

    local aMatriz := {}
    local nMat    := 0
    local nI      := 0

    While nI < 10
        Accept "Digite algo: " TO nMat
            Aadd(aMatriz, nMat)
        nI ++
    enddo

    for nI := 10 TO 1 STEP -1
        QOUT(aMatriz[nI])
    Next nI

Return NIL
