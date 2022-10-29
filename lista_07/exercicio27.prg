// 27.Fazer um programa que apresente invertida uma palavra informada
// pelo usuário. Informar também se é ou não um palíndromo.

Function Main()

    local cTexto    := ""
    local cTxtInv   := ""
    local nI        := 0
    local nTamanho  := 0
 
    Accept "Digite uma palavra: " TO cTexto

    nTamanho := len(cTexto)

    cTxtInv := ""

    FOR nI := 1 TO nTamanho
        cTxtInv += SubStr(cTexto, nTamanho-nI+1 , 1)
    NEXT nI

    QOUT("invertida = " + cTxtInv)

    IF cTexto == cTxtInv
        QOUT(cTexto , " eh um palindromo")
    ENDIF

Return NIL
