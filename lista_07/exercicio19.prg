// 19.Carregar um vetor com 50 caracteres gerados aleatoriamente
// (rand�micos). Ser�o v�lidos apenas caracteres que representem
// letras mai�sculas de �A� at� �Z�. A carga do vetor dever� ser feita
// atrav�s de uma sub-rotina que � chamada automaticamente no
// programa principal. Os caracteres podem se repetir.

SET PROCEDURE TO printarray.prg

Function Main()

    local aVetor := {}

    PreencheVet(@aVetor)

    
    QOUT("O seu vetor tem os caracteres: ")
    QOUT("")
    PrintArray(aVetor)
Return NIL

Function PreencheVet(aVetor)
    
    local nI := 0

    FOR nI := 1 TO 50
        aAdd(aVetor, (CHR(hb_RandomInt(65 , 90))))
    NEXT 

Return NIL
