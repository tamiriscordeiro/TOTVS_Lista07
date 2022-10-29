// 39.Dada uma matriz A de tamanho 3 x 3, preenchida sequencialmente a
// partir de 0 até 8. Calcule a diferença entre a diagonal principal e
// secundária da matriz.

Function Main()

    local aA         := {{"0","1","2"},{"3","4","5"},{"6","7","8"}}
    local nDiferenca := 0

    nDiferenca := (Val(aA[1,1]) + Val(aA[2,2]) + Val(aA[3,3])) - (Val(aA[1,3]) + Val(aA[2,2]) + Val(aA[3,1]))

    QOUT("A diferenca entre a Diagonal Principal e a Secundario eh: " , Alltrim(STR(nDiferenca)))

Return NIL
