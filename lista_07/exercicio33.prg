// 33.Faça o programa do mapa de troco. Nele o usuário informa um valor
// monetário a pagar e o programa calcula qual a menor quantidade de
// cédulas/moedas serão necessárias para pagar exatamente este valor.
// Por exemplo: se o usuário informar R$ 1.260,00, o programa deverá
// informar 6 notas de R$ 200,00; 1 nota de R$ 50,00; 1 nota de R$
// 10,00. Pense em utilizar uma matriz de 2 dimensões, onde a primeira
// coluna contenha o valor de cada cédula/moeda e a segunda terá a
// quantidade.

SET PROCEDURE TO lib_entrada.prg

Function Main()

    local nCompra := ""
    local nPag    := ""
    local nTroco  := ""


    While !EHNUMERO(nCompra)
        Accept "insira aqui o valor da compra: " TO nCompra 
    ENDDO

    While !EHNUMERO(nPag)
        Accept "insira aqui o valor do pagamento: " TO nPag 
    ENDDO

    nTroco := Val(nPag) - Val(nCompra)

    Troco(nTroco)
Return NIL

Function Troco(nTroco)

    local aTroco := {{"200.00", 0},{"100.00", 0},{"050.00", 0},{"020.00", 0},{"010.00", 0},{"005.00", 0},{"002.00", 0},{"001.00", 0},{"000.50", 0},{"000.25", 0},{"000.10", 0},{"000.05", 0},{"000.01", 0}}
    local nI := 0

    While nTroco > 0
        IF nTroco >= 200
            nTroco := nTroco - 200
            aTroco[1,2] += 1
        ELSEIF nTroco >= 100
            nTroco := nTroco - 100
            aTroco[2,2] += 1
        ELSEIF nTroco >= 50
            nTroco := nTroco - 50
            aTroco[3,2] += 1
        ELSEIF nTroco >= 20
            nTroco := nTroco - 20
            aTroco[4,2] += 1
        ELSEIF nTroco >= 10
            nTroco := nTroco - 10
            aTroco[5,2] += 1
        ELSEIF nTroco >= 5
            nTroco := nTroco - 5
            aTroco[6,2] += 1
        ELSEIF nTroco >= 2
            nTroco := nTroco - 2
            aTroco[7,2] += 1
        ELSEIF nTroco >= 1
            nTroco := nTroco - 1
            aTroco[8,2] += 1    
        ELSEIF nTroco >= 0.50
            nTroco := nTroco - 0.50
            aTroco[9,2] += 1
        ELSEIF nTroco >= 0.25
            nTroco := nTroco - 0.25
            aTroco[10,2] += 1
        ELSEIF nTroco >= 0.10
            nTroco := nTroco - 0.10
            aTroco[11,2] += 1
        ELSEIF nTroco >= 0.05
            nTroco := nTroco - 0.05
            aTroco[12,2] += 1
        ELSEIF nTroco >= 0.01
            nTroco := nTroco - 0.01
            aTroco[13,2] += 1
        ELSE
            EXIT
        ENDIF
    ENDDO


    FOR nI := 1 TO 7
        QOUT("Notas  de R$" , Alltrim(aTroco[nI,1]) ," : " ,  Alltrim(STR(aTroco[nI,2])))
    NEXT nI
    
    FOR nI := 8 TO 13
        QOUT("Moedas de R$" , Alltrim(aTroco[nI,1]) ," : " ,  Alltrim(STR(aTroco[nI,2])))
    NEXT nI

Return NIL
