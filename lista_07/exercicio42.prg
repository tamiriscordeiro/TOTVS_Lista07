// 42.Ler o nome e 3 notas de 5 alunos, calcular a média de cada aluno
// (entre 2 das 3 notas pois a menor deve ser descartada). Apresentar
// todas as notas e médias no final. Permitir ordenar por ordem alfabética
// de nome e ordem decrescente de media final.

Function Main()

    Local aM     := {ARRAY(3), ARRAY(3), ARRAY(3), ARRAY(3), ARRAY(3)}
    Local aN     := {"","","","",""}
    Local nCont  := 0
    Local nCont2 := 0    
    Local aMenor := {999999,999999,999999,999999,999999}
    Local aMedia := {0,0,0,0,0}
    Local cAux   := ""
    Local nAux   := 0

    For nCont := 1 to 5
       ACCEPT "Digite o nome do aluno: " to aN[nCont]
       aN[nCont] := Upper(aN[nCont])
        
        if Empty(aN[nCont])
            qout("vazio")
        ENDIF

        for nCont2 := 1 to 3 

        ACCEPT ("Digite a " + ALLTRIM(STR(nCont2)) + "º do aluno " + aN[nCont] + ": ") TO aM[nCont][nCont2]
        aM[nCont][nCont2] := Val(aM[nCont][nCont2])
        if aM[nCont][nCont2] < 0 .or. aM[nCont][nCont2]> 10
        qout("Nota incorreta tente novamente ")
         
        loop
         ENDIF
         NEXT
    NEXT  
        
     FOR nCont := 1 TO 5
        FOR nCont2 := 1 TO 3
            IF aM[nCont][nCont2] < aMenor[nCont]
                aMenor[nCont] := aM[nCont][nCont2]
            ENDIF
        NEXT
    NEXT

       FOR nCont := 1 TO 5 
        FOR nCont2 := 1 TO 3
            IF aMenor[nCont] != aM[nCont][nCont2]
                aMedia[nCont] += aM[nCont][nCont2]
            ENDIF
        NEXT
        aMedia[nCont] := aMedia[nCont] / 2
    NEXT

    qout(chr(10) + "Organizado por nome: " + chr(10))

    FOR nCont := 1 TO 5
        FOR nCont2 := nCont + 1 TO 5
            IF (Asc(aN[nCont2]) < Asc(aN[nCont]))
               
                cAux := aN[nCont2]
                aN[nCont2] := aN[nCont]
                aN[nCont] := cAux

                nAux := aMedia[nCont]
                aMedia[nCont] := aMedia[nCont2]
                aMedia[nCont2] := nAux 
            ENDIF

        NEXT
    NEXT
        FOR nCont := 1 TO 5
        qout( aN[nCont] + " = " + ALLTRIM(STR(aMedia[nCont])))
    NEXT


    qout(chr(10) + "Organizado por notas: " + chr(10))
    FOR nCont := 1 TO 5
        FOR nCont2 := nCont + 1 TO 5
            IF ((aMedia[nCont2]) < (aMedia[nCont]))
               
                cAux := aN[nCont2]
                aN[nCont2] := aN[nCont]
                aN[nCont] := cAux

                nAux := aMedia[nCont]
                aMedia[nCont] := aMedia[nCont2]
                aMedia[nCont2] := nAux 
            ENDIF
        NEXT
    NEXT
        FOR nCont := 1 TO 5
        qout( aN[nCont] + " = " + ALLTRIM(STR(aMedia[nCont])))
    NEXT
RETURN NIL
