programa {
  inclua biblioteca Texto

  funcao inicio() {
    cadeia cpfEntrada, cpfSomenteNumeros, numerosCPF, digitosVerificadores
    caracter c
    inteiro i, tamanho

   
    cpfSomenteNumeros = ""
    numerosCPF = ""
    digitosVerificadores = ""

    escreva("Digite o CPF (com ou sem pontuação): ")
    leia(cpfEntrada)

    tamanho = Texto.numero_caracteres(cpfEntrada)

   
    para(i = 0; i < tamanho; i = i + 1) {
      c = Texto.obter_caracter(cpfEntrada, i)

      se (c >= "0" e c <= "9") {
        cpfSomenteNumeros = cpfSomenteNumeros + c
      }
    }

    
    se (Texto.numero_caracteres(cpfSomenteNumeros) == 11) {
     
      para(i = 0; i < 9; i = i + 1) {
        numerosCPF = numerosCPF + Texto.obter_caracter(cpfSomenteNumeros, i)
      }

      
      digitosVerificadores = Texto.obter_caracter(cpfSomenteNumeros, 9) + Texto.obter_caracter(cpfSomenteNumeros, 10)

      escreva("Números do CPF: ", numerosCPF, "\n")
      escreva("Dígitos Verificadores: ", digitosVerificadores, "\n")
    } senao {
      escreva("CPF inválido. Deve conter 11 dígitos numéricos.\n")
    }
  }
}
