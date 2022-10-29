// 21.Carregar um vetor com 12 caracteres gerados aleatoriamente
// (randômicos). Serão válidos apenas caracteres que representem
// letras minúsculas de “a” até “z”. A carga do vetor deverá ser feita
// através de uma sub-rotina que é chamada automaticamente no
// programa principal. Os caracteres NÃO podem se repetir. Exibir no
// final o vetor gerado. A exibição deverá ser feita via uma sub-rotina.

SET PROCEDURE TO printarray.prg

Function Main()

    local aVetor := {}
    local nNum     := 0

    PreencheVet(@aVetor , @nNum)
    PrintArray(aVetor)

Return NIL

Static Function PreencheVet(aVetor , nNum)
    
    local nI := 0

    FOR nI := 1 TO 12
        nNum := CHR(hb_RandomInt(97 , 122))
        
        IF AScan(aVetor, nNum) == 0
            aAdd(aVetor, nNum)
        ELSE
            nI--
        ENDIF
    NEXT 

Return NIL

