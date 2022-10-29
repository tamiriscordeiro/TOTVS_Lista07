// 5. Elaborar um programa que popule um vetor de 30 posições com
// valores de 1 até 30. Exibir o conteúdo do vetor.


Function Main()

    local aVetor := {}
    local nI      := 0

    for nI := 1 TO 30
        aAdd(aVetor , nI)
    next

    QOUT(hb_valtoexp(aVetor))

Return NIL
