// 27.Fazer um programa que apresente invertida uma palavra informada
// pelo usu�rio. Informar tamb�m se � ou n�o um pal�ndromo.

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
