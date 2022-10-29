// 29.Faça um programa que valide um CPF informado pelo usuário, através
// do cálculo do dígito verificador (check-digit).

Function Main()

    local cCPF  := ""
    local nI    := 0
    local aCPF  := array(11)
    local aCPF2 := array(9)
    local nCont := 1
    local nVali := 0

        Accept "Digite o CPF sem '.': " TO cCPF

        WHILE len(cCPF) < 11
            Accept "Digite os 11 numeros do CPF: " TO cCPF
        ENDDO

        FOR nI := 1 TO 11
            aCPF[nI] := Val(SUBSTR(cCPF , nI, 1))
        NEXT nI

        IF aCPF[1] = aCPF[2] .and. aCPF[2] = aCPF[3] .and. aCPF[3] = aCPF[4] .and. aCPF[4] = aCPF[5] .and. aCPF[5] = aCPF[6] .and. aCPF[6] = aCPF[7] .and. aCPF[7] = aCPF[8] .and. aCPF[8] = aCPF[9] .and. aCPF[9] = aCPF[10] .and. aCPF[10] = aCPF[11]
            QOUT("CPF invalido")
        ELSE

            FOR nI := 10 TO 2 Step -1
                aCPF2[nCont] := (aCPF[nCont]) * nI
                nCont++
            NEXT NI

            FOR nI := 1 TO 9
                nVali := nVali + aCPF2[nI]
            NEXT nI

            nVali := (nVali * 10)%11

            IF nVali == 10
                nVali := 0
            ENDIF

            IF nVali == aCPF[10]

                QOUT("O CPF digitado esta correto")

            ELSE

                QOUT("CPF invalido")

            ENDIF
        ENDIF

Return NIL
