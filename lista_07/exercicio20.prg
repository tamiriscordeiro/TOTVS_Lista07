// 20.Alterar o programa anterior de modo a incluir 4 menus que terão as
// seguintes finalidades:
// a. Listar o conteúdo completo do vetor.

// b. Solicitar ao usuário um caractere, a ser pesquisado no vetor e
// informar se o caractere pesquisado existe ou não no vetor
// informando a posição em que ele está (todas as ocorrências
// visto que o caractere pode se repetir).

// c. Pesquisar se existe no vetor um caractere informado pelo
// usuário e informar qual a posição da última ocorrência desse
// caractere (visto que um mesmo caractere poderá se repetir).

// d. Pesquisar se existe no vetor um caractere informado pelo
// usuário e informar qual a posição da primeira ocorrência desse
// caractere (visto que um mesmo caractere poderá se repetir).

SET PROCEDURE TO printarray.prg


Function Main()

    local aVetor := {}
    local nOpc   := 0

            accept "Digite a opcao desejada:" TO nOpc
            nOpc := val(nOpc)

    PreencheVet(@aVetor)

    while nOpc > 1 .and.  nOpc < 5

        QOUT("1 - Lista o conteudo do vetor: ")
        QOUT("2 - Descubra se um caracter esta no vetor")
        QOUT("3 - Encontre a ultima ocorrencia de um caracter")
        QOUT("4 - Encontre a primeira ocorrencia de um caracter:")
        accept "Digite a opcao desejada:" TO nOpc
            nOpc := val(nOpc)

        if nOpc = 1
            QOUT("")
            QOUT("O seu vetor tem os caracteres: ")
            PrintArray(aVetor)

        elseif nOpc = 2
            Encontra(aVetor)

        elseif nOpc = 3
            Repetido(aVetor)
        endif
    end
    



Return NIL

Static Function PreencheVet(aVetor)
    
    local nI := 0

    FOR nI := 1 TO 30
        aAdd(aVetor, (CHR(hb_RandomInt(65 , 90))))
    NEXT 

Return NIL

static Function Encontra(aVetor)

    local cAcha    := ""
    local cProcura := ""

    Accept "Digite o caracter a ser pesquisado: " TO cAcha

    IF EMPTY(aVetor)
        QOUT("Vazio")
    ELSE
        
        cProcura := ASCAN(aVetor, cAcha)

        IF cProcura = str(cAcha)
            qout("Caractere esta no Vetor")
        ELSE
            qout("Caracter nao encontrado")
        ENDIF
    ENDIF

Return NIL

static Function Repetido(aVetor)

    local nCount    := 0
    local nRep      := 0
    local nI        := 0
    local nII       := 0
    local nComp     := 0
    local nRun      := 1
    local nCheck    := 1

    FOR nCount := 1 TO 50
        nRep := aVetor[nCount]
        nI := 0
        nCheck := 0
        WHILE nCheck <= 50
            nComp := ASCAN(aVetor, nRep, nRun)
            IF nComp <> 0
                nI++
                nRun := nComp + 1
            ENDIF
            nCheck++
        ENDDO
        IF nI > 1
            QOUT("Elemento " + AllTrim(str(nRep)) + " se repete " + AllTrim(str(nI)) + " vezes.")
            nII++
        ENDIF
    NEXT nCount
    
    IF nII = 0
        QOUT("Nenhum elemento se repete")
    ENDIF
       
Return NIL

