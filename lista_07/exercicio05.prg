// 5. Elaborar um programa que popule um vetor de 30 posi��es com
// valores de 1 at� 30. Exibir o conte�do do vetor.


Function Main()

    local aVetor := {}
    local nI      := 0

    for nI := 1 TO 30
        aAdd(aVetor , nI)
    next

    QOUT(hb_valtoexp(aVetor))

Return NIL
