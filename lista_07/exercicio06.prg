// 6. Elaborar um programa que popule um vetor de 30 posi��es com
// valores de 30 at� 1. Exibir o conte�do do vetor.


Function Main()

    local aVetor := {}
    local nI      := 0

    FOR nI := 30 TO 1 STEP -1
        aAdd(aVetor , nI)
    NEXT

    QOUT(hb_valtoexp(aVetor))

Return NIL
