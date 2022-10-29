// 35.Ler três vetores A, B e C com 10 elementos cada. A partir deles,
// montar uma matriz M de 3 linhas por 10 colunas, onde cada linha
// deverá receber os valores referentes a um dos vetores. Apresentar a
// matriz resultante.

Function Main()

    local aA := {"A" , "B" , "C" , "D" , "E" , "F" , "G" , "H" , "I" , "J"}
    local aB := {1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10}
    local aC := {"MACA" , "PERA" , "UVA" , "ABACAXI" , "MORANGO" , "KIWI" , "MAMAO" , "BANANA" , "CARAMBOLA" , "JABUTICABA"}
    local aM := {}

    aAdd(aM, aA)
    aAdd(aM, aB)
    aAdd(aM, aC)

    QOUT(hb_valtoexp(aM[1]))
    QOUT(hb_valtoexp(aM[2]))
    QOUT(hb_valtoexp(aM[3]))

Return NIL
