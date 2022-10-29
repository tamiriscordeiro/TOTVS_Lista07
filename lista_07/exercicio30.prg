// 30.Através de teste de mesa, indique a finalidade do trecho de código a seguir:

Function Main()

    local aANAG := {"A","M","O","R"}
    local nI    := 0
    local cAUX  := ""

    For nI := 1 TO 4

        cAUX := aANAG[nI]
        aANAG[nI] := aANAG[5-nI]
        aANAG[5-nI] := cAUX
        QOUT(hb_valtoexp(aANAG))

    NEXT nI
    
    QOUT("")
    QOUT("O codigo apenas inverteu o array duas vezes, fazendo a saida final ser a mesma que a inicial")

Return NIL
