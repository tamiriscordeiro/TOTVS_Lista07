// 7. Elaborar um programa que popule um vetor de 10 posi��es com
// valores pares a partir de 2 at� o 20. Exibir o conte�do do vetor.


Function Main()

    local aVetor := {}
    local nI      := 0

    FOR nI := 1 TO 10
        aAdd(aVetor , HB_Randomint(2,20))
    NEXT

    QOUT(hb_valtoexp(aVetor))
Return NIL
