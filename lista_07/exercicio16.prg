// 16.Ler uma matriz A do tipo vetor com 5 elementos. Construir uma
// matriz B de mesmo tipo e dimensão, onde cada elemento da matriz
// B deverá ser o valor inverso (sinal trocado) do elemento
// correspondente da matriz A. Apresentar os elementos da matriz.

SET PROCEDURE TO printarray.prg

Function Main()

    local nI := 0
    local aA := {}  
    local aB := {} 
    local aC := {}

    FOR nI := 1 TO 5
        aAdd(aA, (hb_RandomInt(1 , 10)))
        aAdd(aB, ( aA[nI] * -1))
    NEXT

    QOUT("")
    QOUT("A matriz A eh: ")
    PrintArray(aA)

    QOUT("")
    QOUT("A matriz B, com os sinais invertidos eh: ")
    PrintArray(aB)

Return NIL
