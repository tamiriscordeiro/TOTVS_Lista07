// 4. Dado um n�mero de 1 at� 12, apresentar o n�mero de dias do m�s
// correspondente. Se o n�mero escolhido for 2 (fevereiro), considere 28
// dias. Usar vetor.

Function Main()

    local aMeses := {"31" , "28" , "31" , "30" , "31" , "30" , "31" , "31" , "30" , "31" , "30" , "31"}
    local nI      := 0


    Accept "Digite o numero do mes para saber quantos dias ele tem: " TO nI

    while !ISDIGIT(nI) .AND. Val(nI) <1 .OR. Val(nI) > 12
        Accept "Invalido!, Digite um numero entre 1 a 12: " TO nI 
    enddo

    QOUT("O mes selecionado tem" , aMeses[VAL(nI)] , "dias.")

Return NIL
