programa {
  inclua biblioteca Texto
  inclua biblioteca Tipos

  funcao inicio() {
    cadeia cpfEntrada, cpfSomenteNumeros, numerosCPF, digitosVerificadores
    caracter c
    inteiro i, soma, peso, resto, pdv1, pdv2
    inteiro tamanho
    inteiro numerosParaSDV[10]

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
      soma = soma + Tipos.caracter_para_inteiro(Texto.obter_caracter(numerosCPF, i)) * peso
      peso = peso - 1
    }

    resto = soma % 11
    se (resto < 2) {
      pdv1 = 0
    } senao {
      pdv1 = 11 - resto
    }

    escreva("\nCPF digitado: ", cpfSomenteNumeros)
    escreva("\nPrimeiro Dígito Verificador calculado: ", pdv1)
    escreva("\nPrimeiro Dígito Verificador digitado: ", Texto.obter_caracter(digitosVerificadores, 0))

    se (pdv1 == Tipos.caracter_para_inteiro(Texto.obter_caracter(digitosVerificadores, 0))) {
      escreva("\nResultado: O PDV está CORRETO.\n")
    } senao {
      escreva("\nResultado: O PDV está INCORRETO.\n")
    }

    para(i = 0; i < 9; i = i + 1) {
      numerosParaSDV[i] = Tipos.caracter_para_inteiro(Texto.obter_caracter(numerosCPF, i))
    }
    numerosParaSDV[9] = pdv1

    soma = 0
    peso = 11
    para(i = 0; i < 10; i = i + 1) {
      soma = soma + numerosParaSDV[i] * peso
      peso = peso - 1
    }

    resto = soma % 11
    se (resto < 2) {
      pdv2 = 0
    } senao {
      pdv2 = 11 - resto
    }

    escreva("\nSegundo Dígito Verificador calculado: ", pdv2)
    escreva("\nSegundo Dígito Verificador digitado: ", Texto.obter_caracter(digitosVerificadores, 1))

    se (pdv2 == Tipos.caracter_para_inteiro(Texto.obter_caracter(digitosVerificadores, 1))) {
      escreva("\nResultado: O SDV está CORRETO.\n")
    } senao {
      escreva("\nResultado: O SDV está INCORRETO.\n")
    }

    se (
      pdv1 == Tipos.caracter_para_inteiro(Texto.obter_caracter(digitosVerificadores, 0)) e
      pdv2 == Tipos.caracter_para_inteiro(Texto.obter_caracter(digitosVerificadores, 1))
    ) {
      escreva("\n CPF VÁLIDO.\n")
    } senao {
      escreva("\n CPF INVÁLIDO.\n")
    }
  }
}
