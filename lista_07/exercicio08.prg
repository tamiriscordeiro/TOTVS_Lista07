// 8. Ler dois vetores A e B, de 20 elementos cada e calcular um terceiro,
// C, onde cada elemento será a soma dos correspondentes em A e B.
// Apresentar o vetor resultante.

Function Main()

    local nI := 0
    local aA := {}  
    local aB := {} 
    local aC := {}

    FOR nI := 1 TO 20
        aAdd(aA, (hb_RandomInt(1 , 10)))
        aAdd(aB, (hb_RandomInt(1 , 10)))
        aAdd(aC, ( aA[nI] + aB[nI]))
    NEXT


    QOUT("Array A: " , hb_valtoexp(aA))
    QOUT("Array B: " , hb_valtoexp(aB))
    QOUT("A + C..: " , hb_valtoexp(aC))
Return NIL
