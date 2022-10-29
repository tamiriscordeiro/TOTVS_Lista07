// 18.Dada uma data informada pelo usuário, indicar ordinalmente o dia do
// ano que ela representa do 1o dia ao 365o/366o (conforme o ano for
// ou não bissexto). O usuário informará separadamente dos valores do
// dia, do mês e do ano pesquisado.

Function Main()

local cDia  := 0
local cMes  := 0
local cAno  := 0
local dData := 0


    Accept "Digite o dia do mes: " TO cDia

    WHILE !ISDIGIT(cDia) .AND. Val(cDia) < 1 .OR. Val(cDia) > 31
        Accept "Invalido! Digite um numero entre 1 e 31 : " TO cDia
    ENDDO

    Accept "Digite o numero do mes: " TO cMes

    WHILE !ISDIGIT(cMes) .AND. Val(cMes) < 1 .OR. Val(cMes) > 12
        Accept "Invalido! Digite um numero entre 1 e 12 : " TO cMes
    ENDDO

    Accept "Digite o ano: " TO cAno

    WHILE !ISDIGIT(cAno)
        Accept "Invalido! Digite um ano: " TO cAno
    ENDDO

    dData := cAno + "/" + cMes + "/" + cDia
    dData := CtoD(dData)
    QOUT("Este eh o " + ALLtrim(str(DoY(dData))) + "º dia do ano indicado")
Return NIL
