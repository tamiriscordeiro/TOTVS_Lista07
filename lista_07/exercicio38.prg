// 38.Ler uma matriz A de 3 linhas e 3 colunas. Calcular e exibir uma matriz
// B de mesmo tamanho, sendo que a primeira linha de B receba a
// primeira coluna de A, a segunda linha de B receba a segunda coluna
// de A e a terceira linha de B receba a terceira coluna de A. Apresentar
// a matriz resultante.

Function Main()

    local aA := {{"A","B","C"},{"D","E","F"},{"G","H","I"}}
    local aB := {}

    aAdd(aB, aA[1])
    aAdd(aB, aA[2])
    aAdd(aB, aA[3])

    QOUT(hb_valtoexp(aB[1]))
    QOUT(hb_valtoexp(aB[2]))
    QOUT(hb_valtoexp(aB[3]))


Return NIL
