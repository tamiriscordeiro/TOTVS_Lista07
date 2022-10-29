// 21.Carregar um vetor com 12 caracteres gerados aleatoriamente
// (rand�micos). Ser�o v�lidos apenas caracteres que representem
// letras min�sculas de �a� at� �z�. A carga do vetor dever� ser feita
// atrav�s de uma sub-rotina que � chamada automaticamente no
// programa principal. Os caracteres N�O podem se repetir. Exibir no
// final o vetor gerado. A exibi��o dever� ser feita via uma sub-rotina.

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

