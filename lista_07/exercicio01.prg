// 1. Fazer um programa que dados um número de 1 até 7, apresente o
// nome do dia da semana correspondente. Considere 1 como
// “Domingo”. Utilize vetor.

Function Main()

    local aDias := {"Domingo" , "Segunda-Feira" , "Terça-Feira" , "Quarta-Feira" , "Quinta-Feira" , "Sexta-Feira" , "Sabado"}
    local nI    := 0

    Accept "Digite um numero entre 1 e 7 : " TO nI

    WHILE !ISDIGIT(nI) .AND. Val(nI) <1 .OR. Val(nI) > 7
        Accept "Invalido! Digite um valor correspondente (1 a 7): " TO nI
    ENDDO
    
    nI := Val(nI)

    QOUT("")
    QOUT("O dia da semana que corresponde a esse numero eh: " , aDias[nI])


Return NIL
