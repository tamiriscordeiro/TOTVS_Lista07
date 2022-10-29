// 14.Ler duas matrizes A e B do tipo vetor com 20 elementos. Construir
// uma matriz C, onde cada elemento de C é a subtração do elemento
// correspondente de A com B. Apresentar a matriz C.

SET PROCEDURE TO printarray.prg

Function Main()

    local nI := 0
    local aA := {}  
    local aB := {} 
    local aC := {}

    for nI := 1 TO 20
        aAdd(aA, (hb_RandomInt(1 , 5))) 
        aAdd(aB, (hb_RandomInt(1 , 5))) 
        aAdd(aC, ( aA[nI] - aB[nI]))
    next

    QOUT("As matrizes A, B sao: ")

    PrintArray(aA)
    PrintArray(aB)

    QOUT("")
    QOUT("A - B eh a matriz C: ")
    PrintArray(aC)

Return NIL
