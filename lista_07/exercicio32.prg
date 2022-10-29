// 32.Faça uma função de nome “encrypt”, que recebe uma string e realiza
// a criptografia desta string. Essa criptografia pode ser uma mera troca
// de caracteres com base na tabela ASCII e/ou troca de posição de
// caracteres. Em seguida faça um programa que a partir de uma senha
// informada pelo usuário utilize a função criada para codificá-la e
// apresente na tela a senha criptografada.

Function Main()

    local cMSG   := ""
    local aCript := {}

    Accept "Digita aqui sua senha: " TO cMSG

    aCript := encrypt(cMSG)
    QOUT("Mensagem criptografada com sucesso: " + hb_valtoexp(aCript))
    aCript := Turing(aCript)
    QOUT("**********************************************************************************************************")
    QOUT("Ops, Alan Turing descriptografou sua mensagem e o resultado foi: " + hb_valtoexp(aCript))
    QOUT("**********************************************************************************************************")
Return NIL

Function encrypt(MSG)

    local nI     := 0
    local cAux   := ""
    local aCript := {}
    local cCript := ""

    For nI := 1 TO len(MSG)

        cAux := SubStr(MSG, nI, 1)
        cAux := Asc(cAux)-2
        Aadd(aCript, CHR(cAux))

    NEXT nI



Return aCript

Function Turing(MSG)

    local nI     := 0
    local cAux   := ""
    local cCript := ""
    local aCript := {}

    For nI := 1 TO len(MSG)

        cAux := MSG[nI]
        cAux := Asc(cAux)+2
        Aadd(aCript, CHR(cAux))

    NEXT nI



Return aCript

