// 40.Carregar uma matriz de 5x5 com caracteres aleatórios entre A e Z.
// Apresentar no final a string formada pelos caracteres da diagonal
// principal dessa matriz.

Function Main()

    local aM := {{},{},{},{},{}}
    local nI := 0
    local cAceita := ""
    FOR nI := 1 TO 5 

        aAdd(aM[1], CHR(HB_RandomInt(65 , 90)))
        aAdd(aM[2], CHR(HB_RandomInt(65 , 90)))
        aAdd(aM[3], CHR(HB_RandomInt(65 , 90)))
        aAdd(aM[4], CHR(HB_RandomInt(65 , 90)))
        aAdd(aM[5], CHR(HB_RandomInt(65 , 90)))
        
    NEXT nI

        QOUT(hb_valtoexp(aM[1]))
        QOUT(hb_valtoexp(aM[2]))
        QOUT(hb_valtoexp(aM[3]))
        QOUT(hb_valtoexp(aM[4]))
        QOUT(hb_valtoexp(aM[5]))
        QOUT((aM[1,1]),(aM[2,2]),(aM[3,3]),(aM[4,4]),(aM[5,5]))

Return NIL
