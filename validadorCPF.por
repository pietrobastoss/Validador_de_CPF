programa {
    inclua biblioteca Texto

    funcao inicio() {
        cadeia cpf_completo
        cadeia numeros = ""
        cadeia verificadores = "" 
        inteiro pos_numeros[9] = {0, 1, 2, 4, 5, 6, 8, 9, 10}
        inteiro pos_verificadores[2] = {12, 13}

        escreva("Digite o CPF no formato XXX.XXX.XXX-YY: ")
        leia(cpf_completo)
       
        para(inteiro i = 0; i < 9; i++) {
            numeros = numeros + Texto.obter_caracter(cpf_completo, pos_numeros[i])
        }

        para(inteiro i = 0; i < 2; i++) {
            verificadores = verificadores + Texto.obter_caracter(cpf_completo, pos_verificadores[i])
        }

        escreva("\nNúmeros do CPF: ", numeros)
        escreva("\nDígitos Verificadores: ", verificadores)
    }
}
