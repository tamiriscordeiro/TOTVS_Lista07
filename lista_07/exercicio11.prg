// 11.Ler um vetor A de 15 elementos e a partir dele construir um vetor B
// de mesmo tamanho, sendo o inverso de A, ou seja, o primeiro
// elemento de B deverá receber o último de A o segundo de B deverá
// receber o penúltimo de A e assim por diante.

SET PROCEDURE TO printarray.prg

Function Main()

    local nI := 0
    local aA := {}  
    local aB := {}

    for nI := 1 TO 15
        aAdd(aA , nI)
    next

    for nI := 15 TO 1 Step -1
        aAdd(aB, aA[nI])
    next

    QOUT("")
    QOUT("A matriz A eh: ")
    PrintArray(aA)

    QOUT("")
    QOUT("O inverso da matriz eh ")
    PrintArray(aB)

Return NIL


