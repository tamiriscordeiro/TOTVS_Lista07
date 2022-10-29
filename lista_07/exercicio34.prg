// 34.Fazer um tradutor de código Morse. O usuário poderá entrar com um
// caractere e obter o código correspondente ou entrar com o código e
// obter o caractere correspondente.

Function Main()

    local cModo := ""

    While cModo <> "1" .AND. cModo <> "2"
        Accept "Se voce deseja traduzir a palavra para Morse, digite [1] se deseja traduzir Morse para Letra, digite [2]: " TO cModo
    ENDDO

    IF cModo == "1"
        MORSE()
    ELSEIF cModo == "2"
        TRADUMORSE()
    ENDIF

Return NIL


Function MORSE()
    local nI         := 0 
    local nJ         := 0
    local cAux       := ""
    local cResultado := ""
    local aMorse     := {{ "A" , ".-"} , ;
    { "B" , "-..."} , ;
    { "C" , "-.-."} , ;
    { "D" , "-.."} , ;
    { "E" , "."} , ;
    { "F" , "..-."} , ;
    { "G" , "--."} , ;
    { "H" , "...."} , ;
    { "I" , ".."} , ;
    { "J" , ".---"} , ;
    { "K" , "-.-"} , ;
    { "L" , ".-.."} , ;
    { "M" , "--"} , ;
    { "N" , "-."} , ;
    { "O" , "---"} , ;
    { "P" , ".--."} , ;
    { "Q" , "--.-"} , ;
    { "R" , ".-."} , ;
    { "S" , "..."} , ;
    { "T" , "-"} , ;
    { "U" , "..-"} , ;
    { "V" , "...-"} , ;
    { "W" , ".--"} , ;
    { "X" , "-..-"} , ;
    { "Y" , "-.--"} , ;
    { "Z" , "--.."} , ;
    { "1" , ".----"} , ;
    { "2" , "..---"} , ;
    { "3" , "...--"} , ;
    { "4" , "....-"} , ;
    { "5" , "....."} , ;
    { "6" , "-...."} , ;
    { "7" , "--..."} , ;
    { "8" , "---.."} , ;
    { "9" , "----."} , ;
    { "0" , "-----"} , ;
    { "." , ".-.-.-"} , ;
    { "?" , "..--.."} , ;
    { "/" , "-..-."} , ;
    { "-" , "-....-"} , ;
    { "(" , "-.--."} , ;
    { ")" , "-.--.-"}, ;
    { " " , "/"} }

    WHILE Len(cAux) < 1
        Accept "Digite aqui a frase que gostaria de traduzir para morse: " TO cAux
    ENDDO
    cAux := Upper(cAux)

    FOR nJ := 1 TO len(cAux)
        FOR nI := 1 TO len(aMorse)
            IF aMorse[nI][1] == SubStr(cAux, nJ , 1)
                QOUT(SubStr(cAux, nJ , 1) + " = " + aMorse[nI][2])
                cResultado += aMorse[nI][2] + " " 
            ENDIF
        NEXT nI
    NEXT nJ

    qout("Morse: " , cResultado)

Return NIL

Function TRADUMORSE()
    local nI         := 1 
    local nJ         := 0
    local cAux       := ""
    local cResultado := ""
    local lLogico    := .T.
    local aMorse     := {{ "A" , ".-"} , ;
    { "B" , "-..."} , ;
    { "C" , "-.-."} , ;
    { "D" , "-.."} , ;
    { "E" , "."} , ;
    { "F" , "..-."} , ;
    { "G" , "--."} , ;
    { "H" , "...."} , ;
    { "I" , ".."} , ;
    { "J" , ".---"} , ;
    { "K" , "-.-"} , ;
    { "L" , ".-.."} , ;
    { "M" , "--"} , ;
    { "N" , "-."} , ;
    { "O" , "---"} , ;
    { "P" , ".--."} , ;
    { "Q" , "--.-"} , ;
    { "R" , ".-."} , ;
    { "S" , "..."} , ;
    { "T" , "-"} , ;
    { "U" , "..-"} , ;
    { "V" , "...-"} , ;
    { "W" , ".--"} , ;
    { "X" , "-..-"} , ;
    { "Y" , "-.--"} , ;
    { "Z" , "--.."} , ;
    { "1" , ".----"} , ;
    { "2" , "..---"} , ;
    { "3" , "...--"} , ;
    { "4" , "....-"} , ;
    { "5" , "....."} , ;
    { "6" , "-...."} , ;
    { "7" , "--..."} , ;
    { "8" , "---.."} , ;
    { "9" , "----."} , ;
    { "0" , "-----"} , ;
    { " " , "/"}}



        While lLogico
            Accept "Digite o codigo 1 por vez ou aperte 'Enter' para finalizar: " TO cAux

            FOR nI := 1 TO len(aMorse)
                IF cAux == aMorse[nI,2]
                    QOUT(SubStr(cAux, nJ , 1) , " = " , aMorse[nI][1])
                    cResultado += aMorse[nI,1] 
                ENDIF

                IF cAux == ""
                    lLogico := .F.
                ENDIF
            NEXT nI
        ENDDO


    qout("Traducao: " , cResultado)

Return NIL
