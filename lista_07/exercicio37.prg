// 37.A partir da matriz M e N criadas nos exercícios anteriores, construir a
// matriz R de mesmo tamanho, onde cada elemento de R será a soma
// dos elementos correspondentes de M e N. Apresentar a matriz
// resultante.

Function Main()

    local aR := {}
    local nI := 0
    local nJ := 0
    local aM := {}
    local aN := {}
    local nM := 0
    local nN := 0

    MatrizM(@aM)
    MatrizN(@aN)

    FOR nI := 1 TO 10
        FOR nJ := 1 TO 10
            nM := aM[nI][nJ]
            nN := aN[nI][nJ]
            aR[nI,nJ] := Val(nM) + Val(nN)
        NEXT nJ
    NEXT nI 
    
    QOUT(hb_valtoexp(aR))

Return NIL

Function MatrizM()

    local aA := {9 , 8 , 7 , 6 , 5 , 4 , 3 , 2 , 1 , 0}
    local aB := {1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10}
    local aC := {27 , 13 , 34 , 42 , 56 , 11 , 15 , 83 , 1 , 9}
    local aM := {}

    aAdd(aM, aA)
    aAdd(aM, aB)
    aAdd(aM, aC)

    QOUT(hb_valtoexp(aM[1]))
    QOUT(hb_valtoexp(aM[2]))
    QOUT(hb_valtoexp(aM[3]))

Return aM

Function MatrizN()

    local aN := {}
    local nI := 0 
    local nJ := 0


    aN := array(10)

    FOR nI := 1 TO 10
        aN[nI] := array(3)
        FOR nJ := 1 TO 3
            aN[nI][nJ] := nI + nJ
        NEXT nJ
    NEXT nI

    FOR nI := 1 TO 10
        QOUT(hb_valtoexp(aN[nI]))
    NEXT nI

Return aN
