// 15.Ler duas matrizes do tipo vetor. A com 10 elementos e B com 15
// elementos. Construir uma matriz C, sendo esta, a junção das duas
// outras matrizes. Desta forma, C deverá ter a capacidade de
// armazenar 25 elementos. Apresentar a matriz C.

SET PROCEDURE TO printarray.prg

Function Main()

    local nI := 0
    local aA := {}  
    local aB := {}  
    local aC := {}

    for nI := 1 TO 10
        aAdd(aA, (hb_RandomInt(1 , 49)))
    next

    for nI := 1 TO 15
        aAdd(aB, (hb_RandomInt(1 , 49)))
    next

    aC := array(len(aA) + len(aB))

    for nI := 1 TO 10
        aC[nI] := aA[nI]
    next

    for nI := 11 TO 25
        aC[nI] := aB[nI-10]
    next
    
    QOUT("A juncao das matrizes eh: ")
    PrintArray(aC)

Return NIL
