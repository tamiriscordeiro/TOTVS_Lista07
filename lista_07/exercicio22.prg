// 22.Ler 12 elementos de uma matriz tipo vetor, colocá-los em ordem
// crescente.

SET PROCEDURE TO printarray.prg

Function Main()

    local aVetor := {}
    local nI       := 0

    FOR nI := 1 TO 12
        aAdd(aVetor, hb_RandomInt(1,99))
    NEXT 

    ASORT(aVetor)
    PrintArray(aVetor)    

Return NIL
