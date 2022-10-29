// 13.Ler 8 elementos em uma matriz A tipo vetor. Construir uma matriz B
// de mesma dimensão onde cada elemento é o triplo do elemento
// correspondente da mátria A.

SET PROCEDURE TO printarray.prg

Function Main()

    local nI := 0
    local aA := {}  
    local aB := {} 

    FOR nI := 1 TO 20
        aAdd(aA, (hb_RandomInt(1 , 5)))
        aAdd(aB, ( aA[nI] * 3))
    NEXT

    QOUT("As matrizes A e B sao: ")

    PrintArray(aA)
    PrintArray(aB)
    
Return NIL
