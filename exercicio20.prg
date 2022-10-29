// 20.Alterar o programa anterior de modo a incluir 4 menus que ter�o as
// seguintes finalidades:
// a. Listar o conte�do completo do vetor.

// b. Solicitar ao usu�rio um caractere, a ser pesquisado no vetor e
// informar se o caractere pesquisado existe ou n�o no vetor
// informando a posi��o em que ele est� (todas as ocorr�ncias
// visto que o caractere pode se repetir).

// c. Pesquisar se existe no vetor um caractere informado pelo
// usu�rio e informar qual a posi��o da �ltima ocorr�ncia desse
// caractere (visto que um mesmo caractere poder� se repetir).

// d. Pesquisar se existe no vetor um caractere informado pelo
// usu�rio e informar qual a posi��o da primeira ocorr�ncia desse
// caractere (visto que um mesmo caractere poder� se repetir).

SET PROCEDURE TO printarray.prg

function main()

    local aVetor := {}
    local nOpc := 0
    local cCarac := ""
    local lRun := .T.

    aVetor := PreencheVet()

    while lRun

        ACCEPT "Digite um caracter: " to cCarac
        cCarac := UPPER(cCarac)

        if len(cCarac) > 1 .or. EMPTY(cCarac)

            ? "INVALID"

        else

            ? "Opcao 1 - Mostrar Array"
            ? "Opcao 2 - Quantidade de ocorrencias do elemento"
            ? "Opcao 3 - Pesquisar existencia e ultima posicao do elemento"
            ? "Opcao 4 - Pesquisar existencia e primeira posicao do elemento"
            INPUT "Digite uma opcao a ser realizada : " to nOpc

            lRun := .F.

        ENDIF

    enddo

    if nOpc = 1

        PrintArray(aVetor)

    elseif nOpc = 2

        QOUT("")

        EncontraC(aVetor, cCarac)

    elseif nOpc = 3
        
        QOUT("")

        EncontraLast(aVetor, cCarac)

    elseif nOpc = 4

        QOUT("")

        EncontraFirst(aVetor, cCarac)

    else

        ? "Opcao invalida"

    endif


return nil


static function PreencheVet()

    local aFill := {}
    local nCount := 0
    local nFill := 0
    local cFill := ""

    for nCount := 1 to 50

        nFill := hb_randomint(65, 90)

        cFill := CHR(nFill)

        Aadd(aFill, cFill)

    next nCount
    

return aFill

static function EncontraC(aVetor, cCarac)

    local aStore := {}
    local nCount := 0
    local nStore := 1
    local nSearch := 0
    local cComp := ""
    local nI := 0
    local lRun := .T.
    

    while lRun

        if nStore <= 50

            nSearch := ASCAN(aVetor, cCarac, nStore)

            if nSearch = 0

                lRun := .F.

            else
                
                Aadd(aStore, nSearch)
                nStore := nSearch + 1
            ENDIF

        else
            
            lRun := .F.

        endif
        
    enddo

    ? "Ocorrencias do elemento"

    for nCount := 1 to len(aStore)

        QOUT("Ocorrencia " + AllTrim(str(nCount)) + ": " + AllTrim(str(aStore[nCount])))

    next nCount

return nil


static function EncontraLast(aVetor, cCarac)

    local nCount := 0
    local nLast := 0
    local lRun := .T.
    local cComp := ""


    while lRun

        for nCount := 50 to 1 step -1

            cComp := aVetor[nCount]

            if cComp = cCarac

                nLast := nCount
                exit

            endif

        next nCount

        lRun := .F.

    enddo

    if nLast = 0

        ? "Elemento nao existente"

    else
        
        QOUT("Ultima ocorrencia na posicao " + AllTrim(str(nCount)))

    endif

return nil


static function EncontraFirst(aVetor, cCarac)

    local nFirst := ASCAN(aVetor, cCarac)

    if nFirst = 0

        ? "Elemento nao existente"

    else
        
        QOUT("Primeira ocorrencia na posicao " + AllTrim(str(nFirst)))

    endif

return nil


