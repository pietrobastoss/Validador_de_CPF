programa {
  inclua biblioteca Texto
  inclua biblioteca Tipos

  funcao inicio() {
    cadeia cpfEntrada, cpfSomenteNumeros, numerosCPF, digitosVerificadores
    caracter c
    inteiro i, soma, peso, resto, pdvCalculado
    inteiro tamanho
    inteiro i, tamanho
    cpfSomenteNumeros = ""
    numerosCPF = ""
    digitosVerificadores = ""

    escreva("Digite o CPF (formato XXX.XXX.XXX-YY ou XXXXXXXXXYY): ")
    leia(cpfEntrada)

    tamanho = Texto.numero_caracteres(cpfEntrada)

   
    se (
      nao (
        (tamanho == 14 e Texto.obter_caracter(cpfEntrada, 3) == "." e Texto.obter_caracter(cpfEntrada, 7) == "." e Texto.obter_caracter(cpfEntrada, 11) == "-")
        ou
        (tamanho == 11)
      )
    ) {
      escreva("Formato inválido. Encerrando o programa.\n")
      retorne
    }

   
    para(i = 0; i < tamanho; i = i + 1) {
      c = Texto.obter_caracter(cpfEntrada, i)
      se (c >= "0" e c <= "9") {
        cpfSomenteNumeros = cpfSomenteNumeros + c
      }
    }

    se (Texto.numero_caracteres(cpfSomenteNumeros) != 11) {
      escreva("CPF inválido. Deve conter 11 dígitos numéricos.\n")
      retorne
    }

   
    para(i = 0; i < 9; i = i + 1) {
      numerosCPF = numerosCPF + Texto.obter_caracter(cpfSomenteNumeros, i)
    }

    
    digitosVerificadores = Texto.obter_caracter(cpfSomenteNumeros, 9) + Texto.obter_caracter(cpfSomenteNumeros, 10)

   
    soma = 0
    peso = 10
    para(i = 0; i < 9; i = i + 1) {
      soma = soma +Tipos.caracter_para_inteiro((Texto.obter_caracter(numerosCPF, i)) * peso)
      peso = peso - 1
    }

    resto = soma % 11
    se (resto < 2) {
      pdvCalculado = 0
    } senao {
      pdvCalculado = 11 - resto
    }

    escreva("\nCPF digitado: ", cpfEntrada)
    escreva("\nPrimeiro Dígito Verificador calculado: ", pdvCalculado)
    escreva("\nPrimeiro Dígito Verificador digitado: ", Texto.obter_caracter(digitosVerificadores, 0))

    se (pdvCalculado == (Texto.obter_caracter(digitosVerificadores, 0))) {
      escreva("\nResultado: O PDV está CORRETO.\n")
    } senao {
      escreva("\nResultado: O PDV está INCORRETO.\n")
    }
  }
}
