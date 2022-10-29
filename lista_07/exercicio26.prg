//26.Fazer um programa que dada uma palavra qualquer informada pelo usuário apresente na tela o seu primeiro caractere.

Function Main()

local cNome := ""
local cDisplay := ""

    Accept "Digite uma palavra: " to cNome
        cDisplay := Substr(cNome, 1 , 1)

    qout("O primeiro caractere dessa palavra eh: " , cDisplay)

return nil
